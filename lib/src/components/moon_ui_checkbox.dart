import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  final String label;
  final bool isDisabled;

  const MoonCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: isDisabled ? null : onChanged,
          activeColor: MoonColors.primary,
        ),
        Flexible(
          child: Text(
            label,
            style: MoonTextStyles.bodyMedium.copyWith(
              color: isDisabled ? MoonColors.muted : MoonColors.text,
            ),
          ),
        )
      ],
    );
  }
}
