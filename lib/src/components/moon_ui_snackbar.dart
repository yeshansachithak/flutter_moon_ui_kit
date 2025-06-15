import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonSnackbar {
  static void show(BuildContext context, String message, {Color? background}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: background ?? MoonColors.primary,
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
