import 'package:flutter/material.dart';
import 'moon_colors.dart';

class MoonTextStyles {
  static const titleLarge = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: MoonColors.text);
  static const titleMedium = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: MoonColors.text);
  static const titleSmall = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: MoonColors.text);

  static const bodyLarge = TextStyle(fontSize: 16, color: MoonColors.text);
  static const bodyMedium = TextStyle(fontSize: 14, color: MoonColors.text);
  static const bodySmall = TextStyle(fontSize: 12, color: MoonColors.text);

  static const labelLarge = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: MoonColors.muted);
  static const labelMedium = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w500, color: MoonColors.muted);
  static const labelSmall = TextStyle(fontSize: 10, color: MoonColors.muted);
}
