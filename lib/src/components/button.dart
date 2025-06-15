import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final bool outline;
  final bool isLoading;
  final bool isDisabled;
  final EdgeInsets padding;

  const MoonButton({
    super.key,
    required this.label,
    this.onPressed,
    this.outline = false,
    this.isLoading = false,
    this.isDisabled = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    final isClickable = onPressed != null && !isDisabled && !isLoading;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: outline
            ? Colors.transparent
            : isDisabled
                ? MoonColors.muted
                : MoonColors.primary,
        foregroundColor: outline ? MoonColors.primary : Colors.white,
        side: outline ? const BorderSide(color: MoonColors.primary) : null,
        elevation: outline ? 0 : 2,
        padding: padding,
      ),
      onPressed: isClickable ? onPressed : null,
      child: isLoading
          ? const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                  strokeWidth: 2, color: Colors.white))
          : Text(label,
              style: MoonTextStyles.bodyMedium.copyWith(
                color: outline ? MoonColors.primary : Colors.white,
              )),
    );
  }
}
