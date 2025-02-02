import 'package:example/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  NeuIconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,
                        color: Theme.of(context).iconTheme.color),
                    buttonColor: Theme.of(context).cardColor,
                    enableAnimation: true,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Theme',
                    style: GoogleFonts.pressStart2p(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            height: 1.2,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              NeuTextButton(
                buttonHeight: 80,
                buttonWidth: double.infinity,
                buttonColor: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  AppTheme.toggleTheme(ThemeMode.light);
                },
                enableAnimation: true,
                child: ListTile(
                  leading: Icon(Icons.light_mode,
                      size: 32, color: Theme.of(context).colorScheme.onPrimary),
                  title: Text(
                    'Light Theme',
                    style: GoogleFonts.inter(
                      textStyle:
                          Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                    ),
                  ),
                  trailing: Icon(Icons.check_circle_outline,
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
              const SizedBox(height: 16),
              NeuTextButton(
                buttonHeight: 80,
                buttonWidth: double.infinity,
                buttonColor: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  AppTheme.toggleTheme(ThemeMode.dark);
                },
                enableAnimation: true,
                child: ListTile(
                  leading: Icon(Icons.dark_mode,
                      size: 32,
                      color: Theme.of(context).colorScheme.onSecondary),
                  title: Text(
                    'Dark Theme',
                    style: GoogleFonts.inter(
                      textStyle: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                    ),
                  ),
                  trailing: Icon(Icons.radio_button_unchecked,
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
              const SizedBox(height: 16),
              NeuTextButton(
                buttonHeight: 80,
                buttonWidth: double.infinity,
                buttonColor: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  AppTheme.toggleTheme(ThemeMode.system);
                },
                enableAnimation: true,
                child: ListTile(
                  leading: Icon(Icons.settings_system_daydream,
                      size: 32,
                      color: Theme.of(context).colorScheme.onTertiary),
                  title: Text(
                    'System Theme',
                    style: GoogleFonts.inter(
                      textStyle:
                          Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onTertiary,
                              ),
                    ),
                  ),
                  trailing: Icon(Icons.radio_button_unchecked,
                      color: Theme.of(context).colorScheme.onTertiary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
