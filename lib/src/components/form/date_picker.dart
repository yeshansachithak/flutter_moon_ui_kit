import 'package:flutter/material.dart';
import '../../theme/moon_colors.dart';
import '../../theme/moon_text_styles.dart';

class MoonDatePicker extends StatelessWidget {
  final DateTime? initialDate;
  final ValueChanged<DateTime?> onDateSelected;

  const MoonDatePicker({
    super.key,
    this.initialDate,
    required this.onDateSelected,
  });

  Future<void> _pick(BuildContext context) async {
    final now = DateTime.now();
    final result = await showDatePicker(
      context: context,
      initialDate: initialDate ?? now,
      firstDate: DateTime(now.year - 80),
      lastDate: DateTime(now.year + 10),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme:
              Theme.of(ctx).colorScheme.copyWith(primary: MoonColors.primary),
        ),
        child: child!,
      ),
    );
    onDateSelected(result);
  }

  @override
  Widget build(BuildContext context) {
    final text = initialDate != null
        ? '${initialDate!.year}-${initialDate!.month}-${initialDate!.day}'
        : 'Select date';

    return OutlinedButton(
      onPressed: () => _pick(context),
      child: Text(text, style: MoonTextStyles.bodyMedium),
    );
  }
}
