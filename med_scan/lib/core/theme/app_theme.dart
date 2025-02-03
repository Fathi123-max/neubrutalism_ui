import 'package:flutter/material.dart';
import './app_colors.dart';

class AppTheme {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  static void toggleTheme(ThemeMode mode) {
    themeNotifier.value = mode;
  }

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.accentColor,
        error: AppColors.errorColor,
        surface: AppColors.lightSurface,
        onSurface: AppColors.lightTextPrimary,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
      ),
      scaffoldBackgroundColor: AppColors.lightBackground,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.lightTextPrimary),
        displayMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.lightTextPrimary),
        bodyLarge: TextStyle(fontSize: 16, color: AppColors.lightTextPrimary),
        bodyMedium:
            TextStyle(fontSize: 14, color: AppColors.lightTextSecondary),
      ),
      cardTheme: CardTheme(
        elevation: 4,
        color: AppColors.cardLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      iconTheme: const IconThemeData(color: AppColors.lightTextPrimary),
      primaryColor: AppColors.primaryColor,
      primaryColorDark: AppColors.darkBackground,
      // colorScheme: const ColorScheme.light(
      //   primary: AppColors.primaryColor,
      //   secondary: AppColors.accentColor,
      //   error: AppColors.errorColor,
      //   surface: AppColors.lightSurface,
      // ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryAccent,
        error: AppColors.darkErrorColor,
        surface: AppColors.darkSurface,
        onSurface: AppColors.darkTextPrimary,
        brightness: Brightness.dark,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkBackground,
        elevation: 0,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.darkTextPrimary),
        displayMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.darkTextPrimary),
        bodyLarge: TextStyle(fontSize: 16, color: AppColors.darkTextPrimary),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.darkTextSecondary),
      ),
      cardTheme: CardTheme(
        elevation: 4,
        color: AppColors.cardDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      iconTheme: const IconThemeData(color: AppColors.darkTextPrimary),
      primaryColor: AppColors.primaryColor,
      primaryColorDark: AppColors.darkBackground,
      // colorScheme: const ColorScheme.dark(
      //   primary: AppColors.primaryColor,
      //   secondary: AppColors.secondaryAccent,
      //   error: AppColors.darkErrorColor,
      //   surface: AppColors.darkSurface,
      // ),
    );
  }
}
