import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_icons.dart';
import '../theme/moon_theme_extension.dart';

class MoonSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final ValueChanged<String>? onChanged;

  const MoonSearchBar({
    super.key,
    required this.controller,
    this.hint,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        Theme.of(context).extension<MoonThemeExtension>()?.borderRadius ?? 12;

    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint ?? "Search...",
        filled: true,
        fillColor: Theme.of(context).colorScheme.surface,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        prefixIcon: const Icon(MoonIcons.search, color: MoonColors.muted),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: Theme.of(context).dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: MoonColors.primary),
        ),
      ),
    );
  }
}
