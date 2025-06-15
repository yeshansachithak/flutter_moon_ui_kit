import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonDialog {
  static Future<void> show(
    BuildContext context, {
    required String title,
    required String content,
    String confirmLabel = 'OK',
    VoidCallback? onConfirm,
  }) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title, style: MoonTextStyles.titleMedium),
        content: Text(content, style: MoonTextStyles.bodyMedium),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel', style: MoonTextStyles.bodyMedium),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              onConfirm?.call();
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: MoonColors.primary),
            child: Text(confirmLabel),
          ),
        ],
      ),
    );
  }
}
