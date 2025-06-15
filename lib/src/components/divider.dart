import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonDivider extends StatelessWidget {
  final double thickness;
  final double indent;
  final double endIndent;
  final Color? color;

  const MoonDivider({
    super.key,
    this.thickness = 1,
    this.indent = 0,
    this.endIndent = 0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
      color: color ?? MoonColors.border,
    );
  }
}
