import 'package:flutter/material.dart';

class ThemePref {
  static const String lightTheme = "LightTheme";
  static const String darkTheme = "DarkTheme";
  static const String deepOrangeThemeLight = "DeepOrangeThemeLight";
  static const String deepPurpleThemeLight = "DeepPurpleThemeLight";

  static List<String> themePrefList = [
    "LightTheme",
    "DarkTheme",
    "DeepOrangeThemeLight",
    "DeepPurpleThemeLight"
  ];
}

final appThemeData = {
  ThemePref.lightTheme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(color: Colors.blue),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.blue),
    ),
  ),
  ThemePref.darkTheme: ThemeData(brightness: Brightness.dark),
  ThemePref.deepOrangeThemeLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepOrange,
    primarySwatch: Colors.deepOrange,
    appBarTheme: const AppBarTheme(
      color: Colors.deepOrange,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.deepOrange),
    ),
  ),
  ThemePref.deepPurpleThemeLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.deepPurple,
    primarySwatch: Colors.deepPurple,
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(color: Colors.deepPurple),
    ),
  ),
};
