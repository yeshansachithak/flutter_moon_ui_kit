import 'package:flutter/material.dart';
import 'moon_colors.dart';
import 'moon_text_styles.dart';

class MoonTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: MoonColors.background,
    fontFamily: 'Inter',
    textTheme: const TextTheme(
      titleLarge: MoonTextStyles.titleLarge,
      titleMedium: MoonTextStyles.titleMedium,
      bodyMedium: MoonTextStyles.bodyMedium,
      labelSmall: MoonTextStyles.labelSmall,
    ),
    colorScheme: ColorScheme.light(
      primary: MoonColors.primary,
      surface: MoonColors.surface,
      error: MoonColors.error,
    ),
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Inter',
    textTheme: const TextTheme(
      titleLarge: MoonTextStyles.titleLarge,
      titleMedium: MoonTextStyles.titleMedium,
      bodyMedium: MoonTextStyles.bodyMedium,
      labelSmall: MoonTextStyles.labelSmall,
    ),
    colorScheme: ColorScheme.dark(
      primary: MoonColors.primary,
      surface: Colors.grey,
      error: MoonColors.error,
    ),
  );
}
