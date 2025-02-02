import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _nameController = TextEditingController(text: 'John Doe');
  final _emailController = TextEditingController(text: 'john.doe@example.com');
  final _phoneController = TextEditingController(text: '+1 234 567 890');

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

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
                        'Edit Profile',
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
                Center(
                  child: Stack(
                    children: [
                      NeuContainer(
                        height: 120,
                        width: 120,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                        child: const Center(
                          child: Icon(Icons.person, size: 64),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: NeuIconButton(
                          onPressed: () {
                            // Handle image upload
                          },
                          icon: const Icon(Icons.camera_alt),
                          buttonColor: const Color(0xFF9fb7f4),
                          enableAnimation: true,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'Personal Information',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                NeuContainer(
                  width: double.infinity,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            labelStyle: GoogleFonts.inter(),
                            border: InputBorder.none,
                          ),
                          style: GoogleFonts.inter(),
                        ),
                        const Divider(),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: GoogleFonts.inter(),
                            border: InputBorder.none,
                          ),
                          style: GoogleFonts.inter(),
                        ),
                        const Divider(),
                        TextField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            labelText: 'Phone',
                            labelStyle: GoogleFonts.inter(),
                            border: InputBorder.none,
                          ),
                          style: GoogleFonts.inter(),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                NeuTextButton(
                  onPressed: () {
                    // Handle save changes
                    Navigator.pop(context);
                  },
                  buttonHeight: 60,
                  buttonWidth: double.infinity,
                  buttonColor: const Color(0xFF9fb7f4),
                  borderRadius: BorderRadius.circular(20),
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
      ),
    );
  }
}
