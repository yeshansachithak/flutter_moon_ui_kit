import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonSideNavItem {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  const MoonSideNavItem({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isActive = false,
  });
}

class MoonSideNav extends StatelessWidget {
  final List<MoonSideNavItem> items;

  const MoonSideNav({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: MoonColors.surface,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: items.map((item) {
          return ListTile(
            leading: Icon(item.icon,
                color: item.isActive ? MoonColors.primary : MoonColors.muted),
            title: Text(item.label,
                style: MoonTextStyles.bodyMedium.copyWith(
                  color: item.isActive ? MoonColors.primary : MoonColors.text,
                  fontWeight:
                      item.isActive ? FontWeight.w600 : FontWeight.normal,
                )),
            onTap: item.onTap,
          );
        }).toList(),
      ),
    );
  }
}
