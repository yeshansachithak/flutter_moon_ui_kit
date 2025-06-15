import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;

  const MoonBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: MoonColors.primary,
      unselectedItemColor: MoonColors.muted,
      items: items,
      type: BottomNavigationBarType.fixed,
      backgroundColor: MoonColors.surface,
      elevation: 8,
    );
  }
}
