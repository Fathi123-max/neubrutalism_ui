import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get geminiApiKey {
    final apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';
    if (apiKey.isEmpty) {
      throw Exception('GEMINI_API_KEY not found in environment variables');
    }
    return apiKey;
  }

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
