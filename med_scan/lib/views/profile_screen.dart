import 'package:example/views/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E4E4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profile',
                  style: GoogleFonts.pressStart2p(
                    textStyle: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                NeuTextButton(
                  buttonHeight: 160,
                  buttonWidth: double.infinity,
                  buttonColor: const Color(0xFF9fb7f4),
                  borderRadius: BorderRadius.circular(20),
                  onPressed: () {
                    // Handle profile tap
                  },
                  enableAnimation: true,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person, size: 48),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'John Doe',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Edit Profile',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
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
                  buttonHeight: 80,
                  buttonWidth: double.infinity,
                  buttonColor: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()),
                    );
                  },
                  enableAnimation: true,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.settings, size: 32),
                        const SizedBox(width: 16),
                        Text(
                          'Settings',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                NeuTextButton(
                  buttonHeight: 80,
                  buttonWidth: double.infinity,
                  buttonColor: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  onPressed: () {
                    // Handle notifications tap
                  },
                  enableAnimation: true,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(Icons.notifications, size: 32),
                        const SizedBox(width: 16),
                        Text(
                          'Notifications',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
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
