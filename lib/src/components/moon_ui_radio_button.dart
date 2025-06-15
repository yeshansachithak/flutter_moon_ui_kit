import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonRadioButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T?> onChanged;
  final String label;
  final bool isDisabled;

  const MoonRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.label,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<T>(
          value: value,
          groupValue: groupValue,
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
        ),
      ],
    );
  }
}
