import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';
import '../theme/moon_theme_extension.dart';

class MoonPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;

  const MoonPasswordField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
  });

  @override
  State<MoonPasswordField> createState() => _MoonPasswordFieldState();
}

class _MoonPasswordFieldState extends State<MoonPasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        Theme.of(context).extension<MoonThemeExtension>()?.borderRadius ?? 12;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(widget.label!, style: MoonTextStyles.labelMedium),
          ),
        TextField(
          controller: widget.controller,
          obscureText: _obscure,
          decoration: InputDecoration(
            hintText: widget.hint,
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            suffixIcon: IconButton(
              icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
              onPressed: () => setState(() => _obscure = !_obscure),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: const BorderSide(color: MoonColors.border),
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
