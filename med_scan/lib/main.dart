import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'core/config/app_config.dart';
import 'core/theme/app_theme.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(const NeuLandingSite());
}

class NeuLandingSite extends StatelessWidget {
  const NeuLandingSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppTheme.themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp.router(
          title: AppConfig.appName,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: currentMode,
          routerConfig: AppRouter.router,
        ).animate().fadeIn();
      },
    );
  }
}
