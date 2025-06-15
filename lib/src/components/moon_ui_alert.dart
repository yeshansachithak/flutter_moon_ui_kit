import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

enum MoonAlertType { info, success, warning, error }

class MoonAlert extends StatelessWidget {
  final String message;
  final MoonAlertType type;

  const MoonAlert({
    super.key,
    required this.message,
    this.type = MoonAlertType.info,
  });

  Color get _background {
    switch (type) {
      case MoonAlertType.success:
        return MoonColors.success.withOpacity(0.1);
      case MoonAlertType.warning:
        return MoonColors.warning.withOpacity(0.1);
      case MoonAlertType.error:
        return MoonColors.error.withOpacity(0.1);
      default:
        return MoonColors.info.withOpacity(0.1);
    }
  }

  Color get _color {
    switch (type) {
      case MoonAlertType.success:
        return MoonColors.success;
      case MoonAlertType.warning:
        return MoonColors.warning;
      case MoonAlertType.error:
        return MoonColors.error;
      default:
        return MoonColors.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: _background,
        border: Border.all(color: _color),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(message,
          style: MoonTextStyles.bodyMedium.copyWith(color: _color)),
    );
  }
}
