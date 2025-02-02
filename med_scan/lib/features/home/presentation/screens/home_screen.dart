import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  'Home',
                  style: GoogleFonts.pressStart2p(
                    textStyle: TextStyle(
                      fontSize: 32,
                      color: Theme.of(context).textTheme.bodyLarge?.color ??
                          Colors.black,
                      height: 1.2,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                NeuContainer(
                  height: 240,
                  width: double.infinity,
                  color: const Color(0xFF9fb7f4),
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.medical_information,
                            size: 48, color: Colors.black),
                        const SizedBox(height: 12),
                        Text(
                          'AI Body Analysis',
                          style: GoogleFonts.pressStart2p(
                            textStyle: const TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              height: 1.4,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'Take a photo to analyze',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: NeuTextButton(
                        onPressed: () {},
                        buttonHeight: 120,
                        buttonColor: const Color(0xFFFFB74D),
                        borderRadius: BorderRadius.circular(20),
                        enableAnimation: true,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.history_edu,
                                size: 32, color: Colors.black),
                            const SizedBox(height: 8),
                            Text(
                              'History',
                              style: GoogleFonts.pressStart2p(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: NeuTextButton(
                        onPressed: () {},
                        buttonHeight: 120,
                        buttonColor: const Color(0xFF81C784),
                        borderRadius: BorderRadius.circular(20),
                        enableAnimation: true,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.medical_services,
                                size: 32, color: Colors.black),
                            const SizedBox(height: 8),
                            Text(
                              'Services',
                              style: GoogleFonts.pressStart2p(
                                textStyle: const TextStyle(
                                  fontSize: 14,
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
                const SizedBox(height: 24),
                NeuTextButton(
                  onPressed: () {},
                  buttonHeight: 220,
                  buttonWidth: double.infinity,
                  buttonColor: const Color(0xFF4CAF50),
                  borderRadius: BorderRadius.circular(20),
                  enableAnimation: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.camera_alt,
                            size: 56, color: Colors.black),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Take Photo',
                        style: GoogleFonts.pressStart2p(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            height: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Get instant analysis',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.analytics_outlined, size: 24),
                        const SizedBox(width: 12),
                        Text(
                          'Statistics',
                          style: GoogleFonts.pressStart2p(
                            textStyle: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color ??
                                  Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    NeuIconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.refresh),
                      buttonColor: Theme.of(context).scaffoldBackgroundColor,
                      enableAnimation: true,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: NeuContainer(
                        height: 100,
                        color: const Color(0xFFE57373),
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '12',
                              style: GoogleFonts.pressStart2p(
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Scans',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: NeuContainer(
                        height: 100,
                        color: const Color(0xFF64B5F6),
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '3',
                              style: GoogleFonts.pressStart2p(
                                textStyle: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Reports',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const Icon(Icons.history, size: 24),
                    const SizedBox(width: 12),
                    Text(
                      'Recent Analysis',
                      style: GoogleFonts.pressStart2p(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).textTheme.bodyLarge?.color ??
                              Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                NeuContainer(
                  height: 120,
                  width: double.infinity,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_photo_alternate_outlined,
                        size: 32,
                        color: Colors.black54,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'No recent analysis',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Text(
                        'Take your first scan',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ],
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
