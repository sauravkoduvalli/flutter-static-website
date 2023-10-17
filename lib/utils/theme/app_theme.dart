import 'package:flutter/material.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      fontFamily: 'HindSiliguri',
      primarySwatch: Colors.deepOrange,
      primaryColor: Colors.deepOrange,
      brightness: Brightness.light,
      textTheme: _appTextTheme(),
      appBarTheme: _appbarTheme(),
      scaffoldBackgroundColor: Colors.grey.shade100
    );
  }

  AppBarTheme _appbarTheme() {
    return const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      foregroundColor: Colors.deepOrange,
      iconTheme: IconThemeData(color: Colors.black)
    );
  }

  TextTheme _appTextTheme() {
    return const TextTheme(
      titleSmall: TextStyle(fontSize: 16.0),
      titleMedium: TextStyle(fontSize: 20.0),
      titleLarge: TextStyle(fontSize: 24.0),
      bodySmall: TextStyle(fontSize: 8.0),
      bodyMedium: TextStyle(fontSize: 10.0),
      bodyLarge: TextStyle(fontSize: 12.0),
      labelSmall: TextStyle(fontSize: 12.0),
      labelMedium: TextStyle(fontSize: 14.0),
      labelLarge: TextStyle(fontSize: 16.0),
    );
  }
}
