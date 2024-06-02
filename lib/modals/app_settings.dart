import 'package:isar/isar.dart';
part 'app_settings.g.dart';
@Collection()
class Appsetting{
  Id id = Isar.autoIncrement;
  DateTime? firstLaunchDate;

}