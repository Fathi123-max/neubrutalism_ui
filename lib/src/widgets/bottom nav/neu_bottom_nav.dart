import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../neubrutalism_ui.dart';

class NeuBottomNav extends StatefulWidget {
  final List<IconData> icons;
  final Function onIconTap;
  final bool isFloating;
  final double? floatingHeight;
  final double? floatingWidth;
  final double? stackedHeight;
  final double? stackedWidth;
  final Color initialIconColor;
  final Color navBarColor;
  final Color? isSelectedColor;
  final bool autoHideOnScroll;
  final ScrollController scrollController;
  final int? autoHideDuration;
  final int currentIndex;

  const NeuBottomNav({
    Key? key,
    required this.icons,
    required this.initialIconColor,
    required this.navBarColor,
    required this.onIconTap,
    required this.currentIndex,
    this.isFloating = true,
    this.floatingHeight,
    this.floatingWidth,
    this.stackedHeight,
    this.stackedWidth,
    this.isSelectedColor = Colors.black,
    required this.autoHideOnScroll,
    required this.scrollController,
    this.autoHideDuration = 300,
  }) : super(key: key);

  @override
  State<NeuBottomNav> createState() => _NeuBottomNavState();
}

class _NeuBottomNavState extends State<NeuBottomNav> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    if (widget.autoHideOnScroll) {
      widget.scrollController.addListener(_handleScroll);
    }
  }

  @override
  void dispose() {
    if (widget.autoHideOnScroll) {
      widget.scrollController.removeListener(_handleScroll);
    }
    super.dispose();
  }

  void _handleScroll() {
    bool scrollDown = widget.scrollController.position.userScrollDirection ==
        ScrollDirection.forward;
    if (scrollDown != _isVisible) {
      setState(() {
        _isVisible = scrollDown;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget bottomNavWidget = Wrap(
      children: [
        Padding(
          padding: widget.isFloating
              ? const EdgeInsets.only(left: 14, right: 14, bottom: 25)
              : EdgeInsets.zero,
          child: NeuContainer(
            height: widget.isFloating
                ? MediaQuery.of(context).size.height / 11
                : MediaQuery.of(context).size.height / 9,
            borderColor: widget.isFloating ? Colors.black : Colors.transparent,
            color: widget.navBarColor,
            shadowColor: widget.isFloating ? Colors.black : Colors.transparent,
            offset: const Offset(-1, -4),
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < widget.icons.length; i++)
                    GestureDetector(
                      onTap: () => widget.onIconTap(i),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              color: widget.currentIndex == i
                                  ? widget.isSelectedColor
                                  : Colors.transparent,
                              width: 100,
                              height: 100,
                              child: Icon(
                                widget.icons[i],
                                size: 40,
                                color: widget.currentIndex == i
                                    ? Colors.white
                                    : widget.initialIconColor,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                alignment: Alignment.bottomRight,
                                curve: Curves.easeIn,
                                width: widget.currentIndex == i ? 0 : 100,
                                height: widget.currentIndex == i ? 0 : 100,
                                color: Colors.transparent,
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
      ],
    );

    return widget.autoHideOnScroll
        ? AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: widget.autoHideDuration!),
            child: bottomNavWidget,
          )
        : bottomNavWidget;
  }
}

//TODO:Add BottomNavItem Class for the bottom nav items
//TODO: Navigation Mechanism like BottomNavBar
