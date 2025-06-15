import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';
import '../theme/moon_theme_extension.dart';

class MoonInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final bool isEnabled;
  final bool isError;
  final TextInputType keyboardType;

  const MoonInputField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.isEnabled = true,
    this.isError = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor =
        isError ? MoonColors.error : Theme.of(context).dividerColor;

    final borderRadius =
        Theme.of(context).extension<MoonThemeExtension>()?.borderRadius ?? 12;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(label!, style: MoonTextStyles.labelMedium),
          ),
        TextField(
          controller: controller,
          keyboardType: keyboardType,
          enabled: isEnabled,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle:
                MoonTextStyles.bodySmall.copyWith(color: MoonColors.muted),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: borderColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: MoonColors.primary),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: MoonColors.error),
            ),
          ),
        ),
      ],
    );
  }
}
