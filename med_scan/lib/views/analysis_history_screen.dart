import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class AnalysisHistoryScreen extends StatelessWidget {
  const AnalysisHistoryScreen({Key? key}) : super(key: key);

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
                Row(
                  children: [
                    NeuIconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      buttonColor: Colors.white,
                      enableAnimation: true,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Analysis History',
                        style: GoogleFonts.pressStart2p(
                          textStyle: const TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Sample analysis history items
                _buildAnalysisItem(
                  date: 'June 15, 2023',
                  type: 'Body Composition',
                  result: 'Healthy',
                  color: const Color(0xFF9fb7f4),
                ),
                const SizedBox(height: 16),
                _buildAnalysisItem(
                  date: 'May 30, 2023',
                  type: 'Muscle Mass',
                  result: 'Above Average',
                  color: const Color(0xFF4CAF50),
                ),
                const SizedBox(height: 16),
                _buildAnalysisItem(
                  date: 'May 15, 2023',
                  type: 'Body Fat',
                  result: 'Normal Range',
                  color: const Color(0xFFf4d739),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnalysisItem({
    required String date,
    required String type,
    required String result,
    required Color color,
  }) {
    return NeuContainer(
      height: 110,
      width: double.infinity,
      color: color,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 6),
            SizedBox(
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  type,
                  style: GoogleFonts.pressStart2p(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                result,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
