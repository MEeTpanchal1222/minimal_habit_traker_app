import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../modals/app_settings.dart';
import '../modals/habit.dart';

class HabitDatabase extends ChangeNotifier {
  static late Isar isar;

  // database initialized
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar =
    await Isar.open([HabitSchema, AppsettingSchema], directory: dir.path);
  }

  // save first date of app startup
  Future<void> saveFirstLaunchDate() async {
    final existingSettings = await isar.appsettings.where().findFirst();
    if (existingSettings == null) {
      final settings = Appsetting()..firstLaunchDate = DateTime.now();
      await isar.writeTxn(() => isar.appsettings.put(settings));
    }
  }

  //get first date of app startup
  Future<DateTime?> getFirstLaunchedDate() async {
    final settings = await isar.appsettings.where().findFirst();
    return settings?.firstLaunchDate;
  }

  //CRUD

  final List<Habit> currentHabits = [];

  //create new habit
  Future<void> addHabit(String habitName) async {
    final newHabit = Habit()..name = habitName; //created new habit

    await isar.writeTxn(() => isar.habits.put(newHabit)); //save to database

    readHabits(); //read from database
  }

  //read habits
  Future<void> readHabits() async {
    //fetch all habits
    List<Habit> fetchHabits = await isar.habits.where().findAll();
    // give to current habits
    currentHabits.clear();
    currentHabits.addAll(fetchHabits);
    notifyListeners();
  }

  //update habit
  Future<void> updateHabitCompletion(int id, bool isCompleted) async {
    // find the specific habit
    final habit = await isar.habits.get(id);

    // update completion status
    if (habit != null) {
      await isar.writeTxn(() async {
        // if habit is completed -> add the  current date to the completed Days List
        if (isCompleted && !habit.completedDays.contains(DateTime.now())) {
          final today = DateTime.now();

          // add the current date if it's not already oin the list
          habit.completedDays.add(DateTime(
            today.year,
            today.month,
            today.day,
          ));
        }
        // if habit is Not completed -> remove the current date from the list
        else {
          // remove the current date if the habit is marked as not completed

          habit.completedDays.removeWhere((date) =>
          date.year == DateTime.now().year &&
              date.month == DateTime.now().month &&
              date.day == DateTime.now().day);
        }

        //   save the updated habits back to the database
        await isar.habits.put(habit);
      });
    }

    //   re-read from database
    readHabits();
  }

  //edit habit name
  Future<void> updateHabitName(int id, String newName) async {
    final habit = await isar.habits.get(id);

    if (habit != null) {
      await isar.writeTxn(() async {
        habit.name = newName;
        await isar.habits.put(habit);
      });
    }
    readHabits();
  }

  // delete habits
  Future<void> deleteHabit(int id) async {
    await isar.writeTxn(() async {
      await isar.habits.delete(id);
    });
    readHabits();
  }
}