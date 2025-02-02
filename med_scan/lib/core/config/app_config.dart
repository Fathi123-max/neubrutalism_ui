import 'package:flutter/material.dart';

class AppConfig {
  static const String appName = 'MedScan';

  // API Configuration
  static const String apiBaseUrl = 'https://api.medscan.com';
  static const Duration timeoutDuration = Duration(seconds: 30);

  // Theme Configuration
  static const MaterialColor primarySwatch = Colors.teal;
  static const Color primaryColor = Color(0xFFF0E4E4);

  // Cache Configuration
  static const Duration cacheDuration = Duration(hours: 24);

  // Localization Configuration
  static const Locale defaultLocale = Locale('en', 'US');
  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('es', 'ES'),
  ];

  // Route Configuration
  static const String initialRoute = '/';

  // Feature Flags
  static const bool enableAnalytics = true;
  static const bool enableCrashReporting = true;

  // App Version
  static const String version = '1.0.0';
  static const int buildNumber = 1;
}
