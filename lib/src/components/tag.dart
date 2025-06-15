import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonTag extends StatelessWidget {
  final String label;

  const MoonTag({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: MoonColors.surface,
        border: Border.all(color: MoonColors.border),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(label, style: MoonTextStyles.bodyMedium),
    );
  }
}
