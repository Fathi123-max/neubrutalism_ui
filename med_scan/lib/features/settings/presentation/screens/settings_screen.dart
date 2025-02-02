import 'package:example/views/language_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'theme_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              Text(
                'Settings',
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                    fontSize: 32,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    height: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Appearance',
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              NeuTextButton(
                buttonHeight: 90,
                buttonWidth: double.infinity,
                buttonColor: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(16),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThemeScreen(),
                    ),
                  );
                },
                enableAnimation: true,
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onSurface,
                          width: 2),
                    ),
                    child: Icon(Icons.palette,
                        size: 32,
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  title: Text(
                    'Theme',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Preferences',
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              NeuTextButton(
                buttonHeight: 90,
                buttonWidth: double.infinity,
                buttonColor: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(16),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LanguageScreen(),
                    ),
                  );
                },
                enableAnimation: true,
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onSurface,
                          width: 2),
                    ),
                    child: Icon(Icons.language,
                        size: 32,
                        color: Theme.of(context).colorScheme.onSurface),
                  ),
                  title: Text(
                    'Language',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Change app language',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,
                      color: Theme.of(context).colorScheme.onSecondary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
