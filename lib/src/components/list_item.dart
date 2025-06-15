import 'package:flutter/material.dart';
import '../theme/moon_text_styles.dart';
import '../theme/moon_colors.dart';

class MoonListItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  const MoonListItem({
    super.key,
    this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: icon != null ? Icon(icon, color: MoonColors.primary) : null,
      title: Text(title, style: MoonTextStyles.bodyMedium),
      subtitle: subtitle != null
          ? Text(subtitle!,
              style: MoonTextStyles.bodySmall.copyWith(color: MoonColors.muted))
          : null,
      trailing: onTap != null
          ? const Icon(Icons.chevron_right, color: MoonColors.muted)
          : null,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}
