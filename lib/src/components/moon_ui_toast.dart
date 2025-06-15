import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonToast {
  static void showSuccess(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: MoonColors.success,
        content: Text(message),
      ),
    );
  }

  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: MoonColors.error,
        content: Text(message),
      ),
    );
  }
}
