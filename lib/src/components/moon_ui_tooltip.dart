import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonTooltip extends StatelessWidget {
  final Widget child;
  final String message;

  const MoonTooltip({
    super.key,
    required this.child,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      decoration: BoxDecoration(
        color: MoonColors.primary.withOpacity(0.95),
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(color: Colors.white),
      child: child,
    );
  }
}
