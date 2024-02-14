// ignore_for_file: prefer_const_constructors

import 'package:daily_exercises_app1/core/utils/my_color.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData themeData = ThemeData(
      fontFamily: "Cairo",
      scaffoldBackgroundColor: MyColor.kBackgroundColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: MyColor.kActiveIconColor,
        selectedIconTheme: IconThemeData(color: MyColor.kActiveIconColor),
        unselectedItemColor: Color(0xff4A4E64),
      ));
}
