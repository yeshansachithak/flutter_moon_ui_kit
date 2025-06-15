import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool outline;

  const MoonButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.outline = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: outline ? Colors.transparent : MoonColors.primary,
        foregroundColor: outline ? MoonColors.primary : Colors.white,
        side: outline ? const BorderSide(color: MoonColors.primary) : null,
        elevation: outline ? 0 : 2,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(label, style: MoonTextStyles.bodyMedium.copyWith(
        color: outline ? MoonColors.primary : Colors.white,
      )),
    );
  }
}
