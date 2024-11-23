import 'package:flutter/material.dart';
import 'package:smart_travel/core/theme/colors.dart';

interface class AppTheme {
  static final light = ThemeData(
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromRGBO(3, 37, 65, 1)),
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.white, centerTitle: true),
    scaffoldBackgroundColor: AppColors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.blue,
    ),
    useMaterial3: true,
    textTheme: const TextTheme(
      displayMedium: TextStyle(),
      displaySmall: TextStyle(),
      displayLarge: TextStyle(),
    ),
    // inputDecorationTheme: InputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.orange),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 31, vertical: 8),
        ),
      ),
    ),
  );
}
