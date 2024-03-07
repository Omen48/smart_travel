import 'package:auth_study/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

 interface class AppTheme {
  static final light = ThemeData(
      colorScheme:
          ColorScheme.fromSeed(seedColor: const Color.fromRGBO(3, 37, 65, 1)),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        centerTitle: true
      ),
      scaffoldBackgroundColor: AppColors.white,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.blue,
      ),
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity);
}
