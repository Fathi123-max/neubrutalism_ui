import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                        'Notifications',
                        style: GoogleFonts.pressStart2p(
                          textStyle: const TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                _buildNotificationItem(
                  'Analysis Results',
                  'Your health analysis report is ready to view',
                  '2 hours ago',
                  Icons.analytics,
                  const Color(0xFF9fb7f4),
                ),
                const SizedBox(height: 16),
                _buildNotificationItem(
                  'Appointment Reminder',
                  'You have an appointment with Dr. Smith tomorrow at 10:00 AM',
                  '5 hours ago',
                  Icons.calendar_today,
                  const Color(0xFFf4d739),
                ),
                const SizedBox(height: 16),
                _buildNotificationItem(
                  'New Message',
                  'Dr. Johnson sent you a message regarding your last visit',
                  '1 day ago',
                  Icons.message,
                  const Color(0xFF98FB98),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationItem(
    String title,
    String message,
    String time,
    IconData icon,
    Color color,
  ) {
    return NeuContainer(
      width: double.infinity,
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NeuContainer(
              height: 50,
              width: 50,
              color: color,
              borderRadius: BorderRadius.circular(12),
              child: Icon(icon, color: Colors.black),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        time,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    message,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
