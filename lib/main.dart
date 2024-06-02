import 'package:flutter/material.dart';
import 'package:minimal_habit_traker_app/pages/home_page.dart';
import 'package:minimal_habit_traker_app/theme/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'database/habit_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HabitDatabase.initialize();
  await HabitDatabase().saveFirstLaunchDate();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Themeprovider()),
    ChangeNotifierProvider(
      create: (context) => HabitDatabase(),
    )
  ], child: const HabitTrackerApp()));
}

class HabitTrackerApp extends StatelessWidget {
  const HabitTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}