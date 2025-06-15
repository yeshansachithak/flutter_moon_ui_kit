import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';
import '../theme/moon_theme_extension.dart';

class MoonTextArea extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final bool isDisabled;
  final int minLines;
  final int maxLines;

  const MoonTextArea({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.isDisabled = false,
    this.minLines = 3,
    this.maxLines = 5,
  });

  @override
  Widget build(BuildContext context) {
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
          minLines: minLines,
          maxLines: maxLines,
          enabled: !isDisabled,
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
              borderSide: BorderSide(color: Theme.of(context).dividerColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: MoonColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
