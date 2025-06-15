import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_theme_extension.dart';
import '../theme/moon_text_styles.dart';

class MoonDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String? label;
  final String? hint;
  final bool isDisabled;

  const MoonDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.label,
    this.hint,
    this.isDisabled = false,
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
        DropdownButtonFormField<T>(
          value: value,
          onChanged: isDisabled ? null : onChanged,
          items: items,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            hintText: hint,
            hintStyle:
                MoonTextStyles.bodySmall.copyWith(color: MoonColors.muted),
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Theme.of(context).dividerColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Theme.of(context).dividerColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: MoonColors.primary),
            ),
          ),
          dropdownColor: Theme.of(context).colorScheme.surface,
        ),
      ],
    );
  }
}
