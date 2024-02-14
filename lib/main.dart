// ignore_for_file: prefer_const_constructors

import 'package:daily_exercises_app1/home_screen.dart';
import 'package:daily_exercises_app1/theme/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DilyExercisesApp());
}

class DilyExercisesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.themeData,
      initialRoute: HomeScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
      },
    );
  }
}
