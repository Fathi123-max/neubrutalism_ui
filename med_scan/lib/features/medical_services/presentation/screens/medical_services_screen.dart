import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'analysis_history_screen.dart';

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
                    textStyle:
                        Theme.of(context).textTheme.displayLarge?.copyWith(
                              fontSize: 28,
                            ),
                  ),
                ),
                const SizedBox(height: 24),
                NeuTextButton(
                  buttonHeight: 120,
                  buttonWidth: double.infinity,
                  buttonColor: const Color(0xFF9fb7f4),
                  borderRadius: BorderRadius.circular(20),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AnalysisHistoryScreen(),
                      ),
                    );
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
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
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
                                      .bodyLarge
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
                  buttonColor: const Color(0xFF4CAF50),
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
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
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
