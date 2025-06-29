import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffold,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.appBar,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.textPrimary,
        fontFamily: 'Roboto',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: AppColors.textSecondary,
        fontFamily: 'Roboto',
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      background: AppColors.background,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: AppColors.white,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
        color: AppColors.white,
        fontFamily: 'Roboto',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.grey,
        fontFamily: 'Roboto',
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      background: AppColors.black,
    ),
  );
}
