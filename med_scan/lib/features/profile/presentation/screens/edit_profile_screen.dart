import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E4E4),
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: GoogleFonts.pressStart2p(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://picsum.photos/200'),
              ),
              const SizedBox(height: 24),
              NeuTextButton(
                buttonHeight: 50,
                buttonWidth: 200,
                buttonColor: const Color(0xFF9fb7f4),
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  // Handle change photo
                },
                enableAnimation: true,
                child: Text(
                  'Change Photo',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                initialValue: 'John Doe',
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                initialValue: 'john.doe@example.com',
              ),
              const SizedBox(height: 24),
              NeuTextButton(
                buttonHeight: 60,
                buttonWidth: double.infinity,
                buttonColor: const Color(0xFF4CAF50),
                borderRadius: BorderRadius.circular(12),
                onPressed: () {
                  // Handle save changes
                  Navigator.pop(context);
                },
                enableAnimation: true,
                child: Text(
                  'Save Changes',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
