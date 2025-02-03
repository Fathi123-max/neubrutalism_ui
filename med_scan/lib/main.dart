import 'package:example/core/config/app_config.dart';
import 'package:example/features/camera/presentation/bloc/camera_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:example/core/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'core/theme/app_theme.dart';
import 'core/routing/app_router.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  await setupServiceLocator();
  runApp(const NeuLandingSite());
}

class NeuLandingSite extends StatelessWidget {
  const NeuLandingSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<CameraBloc>(),
        child: ValueListenableBuilder<ThemeMode>(
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
        ));
  }
}
