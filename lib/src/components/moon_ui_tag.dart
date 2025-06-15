import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

enum MoonTagVariant { neutral, success, error, warning, info }

class MoonTag extends StatelessWidget {
  final String label;
  final MoonTagVariant variant;

  const MoonTag({
    super.key,
    required this.label,
    this.variant = MoonTagVariant.neutral,
  });

  Color _getColor() {
    switch (variant) {
      case MoonTagVariant.success:
        return MoonColors.success;
      case MoonTagVariant.error:
        return MoonColors.error;
      case MoonTagVariant.warning:
        return MoonColors.warning;
      case MoonTagVariant.info:
        return MoonColors.info;
      default:
        return MoonColors.border;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(999),
      ),
      child:
          Text(label, style: MoonTextStyles.bodyMedium.copyWith(color: color)),
    );
  }
}
