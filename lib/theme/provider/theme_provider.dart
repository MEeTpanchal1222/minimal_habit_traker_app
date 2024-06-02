import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minimal_habit_traker_app/theme/dark_mode.dart';
import 'package:minimal_habit_traker_app/theme/light_mode.dart';

class Themeprovider extends ChangeNotifier{
  ThemeData _themeData =lightmode;
  ThemeData get themeData => _themeData;
  bool get isDarkmode => _themeData == darkmode;
  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }
  void toggleTheme(){
    if(_themeData == lightmode){
      themeData = darkmode;
    }else{
      themeData = lightmode;
    }
  }
}