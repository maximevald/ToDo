import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_list/pages/main_page.dart';
import 'package:todo_list/theme/app_theme.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({
    required this.prefs,
    super.key,
  });

  // Add prefs field
  final SharedPreferences prefs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Remove red debug banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme(),
      home: MainPage(prefs: prefs),
    );
  }
}
