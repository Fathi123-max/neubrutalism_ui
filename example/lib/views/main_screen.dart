import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'home_screen.dart';
import 'medical_services_screen.dart';
import 'settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final ScrollController _scrollController = ScrollController();

  final List<Widget> _screens = [
    const HomeScreen(),
    const MedicalServicesScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E4E4),
      body: _screens[_currentIndex],
      bottomNavigationBar: NeuBottomNav(
        icons: const [
          Icons.home,
          Icons.medical_services,
          Icons.settings,
        ],
        isFloating: true,
        initialIconColor: Colors.black,
        navBarColor: const Color(0xFFF0E4E4),
        onIconTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        autoHideOnScroll: false,
        scrollController: _scrollController,
        isSelectedColor: Colors.black,
        currentIndex: _currentIndex,
      ),
    );
  }
}
