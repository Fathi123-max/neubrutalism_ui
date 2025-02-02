import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'en';

  final List<Map<String, dynamic>> _languages = [
    {
      'code': 'en',
      'name': 'English',
      'flag': '🇺🇸',
    },
    {
      'code': 'es',
      'name': 'Español',
      'flag': '🇪🇸',
    },
    {
      'code': 'fr',
      'name': 'Français',
      'flag': '🇫🇷',
    },
    {
      'code': 'zh',
      'name': '中文',
      'flag': '🇨🇳',
    },
    {
      'code': 'ja',
      'name': '日本語',
      'flag': '🇯🇵',
    },
    {
      'code': 'de',
      'name': 'Deutsch',
      'flag': '🇩🇪',
    },
  ];

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
                    Text(
                      'Language',
                      style: GoogleFonts.pressStart2p(
                        textStyle: const TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  'Select your preferred language',
                  style: GoogleFonts.pressStart2p(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _languages.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    final language = _languages[index];
                    final isSelected = language['code'] == _selectedLanguage;

                    return NeuTextButton(
                      text: language['name'],
                      onPressed: () {
                        setState(() {
                          _selectedLanguage = language['code'];
                        });
                      },
                      buttonColor:
                          isSelected ? const Color(0xFF9fb7f4) : Colors.white,
                      buttonWidth: double.infinity,
                      buttonHeight: 80,
                      borderRadius: BorderRadius.circular(16),
                      enableAnimation: true,
                      child: Row(
                        children: [
                          Text(
                            language['flag'],
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(width: 16),
                          if (isSelected) ...[
                            const Spacer(),
                            const Icon(
                              Icons.check_circle,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
