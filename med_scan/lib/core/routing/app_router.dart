import 'package:example/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:example/views/language_screen.dart';
import 'package:example/views/main_screen.dart';
import 'package:example/features/medical_services/presentation/screens/medical_services_screen.dart';
import 'package:example/features/settings/presentation/screens/settings_screen.dart';
import 'package:example/features/settings/presentation/screens/theme_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class AppRouter {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return MainScreen(
            location: state.uri.toString(),
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) =>
                const NoTransitionPage<void>(child: HomeScreen()),
          ),
          GoRoute(
            path: '/medical-services',
            pageBuilder: (context, state) =>
                const NoTransitionPage<void>(child: MedicalServicesScreen()),
          ),
          GoRoute(
            path: '/settings',
            pageBuilder: (context, state) =>
                const NoTransitionPage<void>(child: SettingsScreen()),
            routes: [
              GoRoute(
                path: 'theme',
                builder: (context, state) => const ThemeScreen(),
              ),
              GoRoute(
                path: 'language',
                builder: (context, state) => const LanguageScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );
}
