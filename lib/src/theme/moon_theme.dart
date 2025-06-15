import 'package:flutter/material.dart';
import 'moon_colors.dart';
import 'moon_text_styles.dart';
import 'moon_theme_extension.dart';

class MoonTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: MoonColors.background,
    fontFamily: 'Inter',
    textTheme: const TextTheme(
      titleLarge: MoonTextStyles.titleLarge,
      titleMedium: MoonTextStyles.titleMedium,
      titleSmall: MoonTextStyles.titleSmall,
      bodyLarge: MoonTextStyles.bodyLarge,
      bodyMedium: MoonTextStyles.bodyMedium,
      bodySmall: MoonTextStyles.bodySmall,
      labelLarge: MoonTextStyles.labelLarge,
      labelMedium: MoonTextStyles.labelMedium,
      labelSmall: MoonTextStyles.labelSmall,
    ),
    colorScheme: const ColorScheme.light(
      primary: MoonColors.primary,
      secondary: MoonColors.secondary,
      surface: MoonColors.surface,
      error: MoonColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: MoonColors.text,
      onError: Colors.white,
    ),
    extensions: const [
      MoonThemeExtension.light,
    ],
  );

  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Inter',
    textTheme: const TextTheme(
      titleLarge: MoonTextStyles.titleLarge,
      titleMedium: MoonTextStyles.titleMedium,
      titleSmall: MoonTextStyles.titleSmall,
      bodyLarge: MoonTextStyles.bodyLarge,
      bodyMedium: MoonTextStyles.bodyMedium,
      bodySmall: MoonTextStyles.bodySmall,
      labelLarge: MoonTextStyles.labelLarge,
      labelMedium: MoonTextStyles.labelMedium,
      labelSmall: MoonTextStyles.labelSmall,
    ),
    colorScheme: const ColorScheme.dark(
      primary: MoonColors.primary,
      secondary: MoonColors.secondary,
      surface: Colors.grey,
      error: MoonColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      onError: Colors.white,
    ),
    extensions: const [
      MoonThemeExtension.dark,
    ],
  );
}
