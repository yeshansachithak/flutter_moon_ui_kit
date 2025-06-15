import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String? label;
  final bool isDisabled;

  const MoonSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: value,
          onChanged: isDisabled ? null : onChanged,
          activeColor: MoonColors.primary,
        ),
        if (label != null)
          Flexible(
            child: Text(
              label!,
              style: MoonTextStyles.bodyMedium.copyWith(
                color: isDisabled ? MoonColors.muted : MoonColors.text,
              ),
            ),
          ),
      ],
    );
  }
}
