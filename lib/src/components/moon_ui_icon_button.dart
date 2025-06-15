import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_theme_extension.dart';

class MoonIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final double size;
  final bool outline;
  final bool isDisabled;

  const MoonIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.size = 48.0,
    this.outline = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius =
        theme.extension<MoonThemeExtension>()?.borderRadius ?? 12;

    final bgColor = outline
        ? Colors.transparent
        : isDisabled
            ? MoonColors.muted
            : MoonColors.primary;

    final iconColor = outline ? MoonColors.primary : Colors.white;

    return GestureDetector(
      onTap: (isDisabled || onPressed == null) ? null : onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: bgColor,
          border: outline ? Border.all(color: MoonColors.primary) : null,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Icon(icon, color: iconColor, size: 20),
      ),
    );
  }
}
