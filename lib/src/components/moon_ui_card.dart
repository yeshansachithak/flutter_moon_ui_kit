import 'package:flutter/material.dart';
import '../theme/moon_theme_extension.dart';

class MoonCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double? radius;
  final Color? color;

  const MoonCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.radius,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<MoonThemeExtension>();

    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.surface,
        borderRadius:
            BorderRadius.circular(radius ?? theme?.borderRadius ?? 12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: child,
    );
  }
}
