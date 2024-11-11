import 'package:flutter/material.dart';
import 'package:food_order/themes/dark_mode.dart';
import 'package:food_order/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  bool get isDarkmode => _themeData == darkMode;
  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

void toggleTheme(){
  if(_themeData == lightMode)
  {
    themeData = darkMode;
  }
  else 
  {
    themeData = lightMode;
  }
}
}