import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

class MainScreen extends StatefulWidget {
  final Widget child;
  final String location;
  const MainScreen({Key? key, required this.child, required this.location})
      : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _currentIndex;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _currentIndex = _calculateSelectedIndex(widget.location);
  }

  @override
  void didUpdateWidget(MainScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    final newIndex = _calculateSelectedIndex(widget.location);
    if (_currentIndex != newIndex) {
      setState(() {
        _currentIndex = newIndex;
      });
    }
  }

  int _calculateSelectedIndex(String location) {
    final segments = Uri.parse(location).pathSegments;
    if (segments.isEmpty) return 0;

    final baseLocation = segments.first;
    switch (baseLocation) {
      case 'medical-services':
        return 1;
      case 'settings':
        return 2;
      default:
        return 0;
    }
  }

  void _onDestinationSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/medical-services');
        break;
      case 2:
        context.go('/settings');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final segments = Uri.parse(widget.location).pathSegments;
    final isNestedRoute = segments.length > 1;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: widget.child,
      bottomNavigationBar: isNestedRoute
          ? null
          : NeuBottomNav(
              icons: const [
                Icons.home,
                Icons.medical_services,
                Icons.settings,
              ],
              isFloating: true,
              initialIconColor:
                  Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black,
              navBarColor: Theme.of(context).scaffoldBackgroundColor,
              onIconTap: _onDestinationSelected,
              autoHideOnScroll: false,
              scrollController: _scrollController,
              isSelectedColor: Theme.of(context).primaryColor,
              currentIndex: _currentIndex,
            ),
    );
  }
}
