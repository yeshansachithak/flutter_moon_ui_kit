import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  const MoonAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MoonColors.surface,
      elevation: 0.5,
      leading: leading,
      title: Text(title, style: MoonTextStyles.titleMedium),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
