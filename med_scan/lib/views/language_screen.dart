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
                Row(
                  children: [
                    NeuIconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back,
                          color: Theme.of(context).iconTheme.color),
                      buttonColor: Theme.of(context).cardColor,
                      enableAnimation: true,
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      child: Text(
                        'Language',
                        style: GoogleFonts.pressStart2p(
                          textStyle: TextStyle(
                            fontSize: 28, // Reduced font size
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            height: 1.2,
                          ),
                        ),
                        overflow: TextOverflow.ellipsis, // Handle text overflow
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  'Select your preferred language',
                  style: GoogleFonts.pressStart2p(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.color
                          ?.withOpacity(0.6),
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
                    return _buildLanguageOption(
                      context,
                      language['name'],
                      language['flag'],
                      language['code'],
                      isSelected,
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

  final List<Map<String, dynamic>> _languages = [
    {'code': 'en', 'name': 'English', 'flag': '🇺🇸'},
    {'code': 'es', 'name': 'Español', 'flag': '🇪🇸'},
    {'code': 'fr', 'name': 'Français', 'flag': '🇫🇷'},
    {'code': 'zh', 'name': '中文', 'flag': '🇨🇳'},
    {'code': 'ja', 'name': '日本語', 'flag': '🇯🇵'},
    {'code': 'de', 'name': 'Deutsch', 'flag': '🇩🇪'},
  ];

  Widget _buildLanguageOption(BuildContext context, String language,
      String flag, String code, bool isSelected) {
    return NeuTextButton(
      onPressed: () {
        setState(() {
          _selectedLanguage = code;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Selected language: $language'),
            duration: const Duration(seconds: 1),
            backgroundColor: Theme.of(context).primaryColor,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      },
      buttonColor: isSelected
          ? Theme.of(context).primaryColor
          : Theme.of(context).cardColor,
      enableAnimation: true,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              flag,
              style: const TextStyle(fontSize: 25, height: 1),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                language,
                style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: isSelected
                        ? Theme.of(context).primaryTextTheme.bodyLarge?.color
                        : Theme.of(context).textTheme.bodyLarge?.color,
                    height: 1.2,
                  ),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (isSelected)
              Icon(
                Icons.check_circle,
                color: Theme.of(context).primaryTextTheme.bodyLarge?.color,
                size: 24,
              ),
          ],
        ),
      ),
    );
  }
}
