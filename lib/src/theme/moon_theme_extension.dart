import 'dart:ui';
import 'package:flutter/material.dart';

class MoonThemeExtension extends ThemeExtension<MoonThemeExtension> {
  final double borderRadius;

  const MoonThemeExtension({required this.borderRadius});

  @override
  MoonThemeExtension copyWith({double? borderRadius}) {
    return MoonThemeExtension(
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  MoonThemeExtension lerp(ThemeExtension<MoonThemeExtension>? other, double t) {
    if (other is! MoonThemeExtension) return this;
    return MoonThemeExtension(
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t)!,
    );
  }

  static const light = MoonThemeExtension(borderRadius: 12.0);
  static const dark = MoonThemeExtension(borderRadius: 12.0);
}
