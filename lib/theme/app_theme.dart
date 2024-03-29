import 'package:flutter/material.dart';

class AppTheme {
  static const mainColor = Color.fromARGB(255, 226, 157, 54);
  static const scaffoldBackgroundColor = Color.fromARGB(255, 247, 231, 207);
  ThemeData get themeData => ThemeData(
        cardColor: const Color.fromARGB(255, 255, 247, 247),
        primaryColor: mainColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: mainColor,
        ),
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        textTheme: const TextTheme(),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: mainColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: mainColor),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) {
            if (!states.contains(MaterialState.selected)) {
              return Colors.transparent;
            }
            return mainColor;
          }),
          checkColor: MaterialStateColor.resolveWith((states) {
            if (!states.contains(MaterialState.selected)) {
              return Colors.transparent;
            }
            return Colors.white.withOpacity(0.9);
          }),
        ),
      );
}
