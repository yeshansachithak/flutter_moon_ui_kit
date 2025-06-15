import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonEmptyState extends StatelessWidget {
  final String message;
  final IconData icon;
  final double iconSize;

  const MoonEmptyState({
    super.key,
    required this.message,
    this.icon = Icons.inbox,
    this.iconSize = 48,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: iconSize, color: MoonColors.muted),
          const SizedBox(height: 12),
          Text(
            message,
            style: MoonTextStyles.bodyMedium.copyWith(color: MoonColors.muted),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
