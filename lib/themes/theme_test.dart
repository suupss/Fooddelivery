import 'package:flutter/material.dart';
import 'package:food_order/themes/dark_mode.dart';
import 'package:food_order/themes/light_mode.dart';

class ThemeTest extends ChangeNotifier {
  ThemeData themeData = lightMode;
  bool isDarkmode()
  {
    return themeData == darkMode;

  }

  void onTap()
  {
if(themeData == lightMode)
{
  themeData = darkMode;
}
else{
  themeData = lightMode;
}
notifyListeners();
  }
}