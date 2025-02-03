import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class MedicalServicesScreen extends StatelessWidget {
  const MedicalServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Medical Services',
                  style: GoogleFonts.pressStart2p(
                    textStyle: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(
                          fontSize: 28,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                  ),
                ),
                const SizedBox(height: 24),
                NeuTextButton(
                  buttonHeight: 120,
                  buttonWidth: double.infinity,
                  buttonColor: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                  onPressed: () {
                    context.go('/medical-services/analysis-history');
                  },
                  enableAnimation: true,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.analytics,
                            size: 48, color: Theme.of(context).iconTheme.color),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Analysis History',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color,
                                ),
                              ),
                            ),
                            Text(
                              'View your past analyses',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                NeuTextButton(
                  buttonHeight: 120,
                  buttonWidth: double.infinity,
                  buttonColor: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(20),
                  onPressed: () {
                    // Handle medical reports tap
                  },
                  enableAnimation: true,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Icon(Icons.description,
                            size: 48, color: Theme.of(context).iconTheme.color),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Medical Reports',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color,
                                ),
                              ),
                            ),
                            Text(
                              'Access detailed reports',
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
