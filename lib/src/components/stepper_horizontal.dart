import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonStepperHorizontal extends StatelessWidget {
  final int currentStep;
  final List<String> steps;

  const MoonStepperHorizontal({
    super.key,
    required this.currentStep,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: steps.asMap().entries.map((entry) {
        final index = entry.key;
        final title = entry.value;
        final isActive = index == currentStep;

        return Expanded(
          child: Column(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor:
                    isActive ? MoonColors.primary : MoonColors.border,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    color: isActive ? Colors.white : MoonColors.muted,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: MoonTextStyles.labelSmall.copyWith(
                  color: isActive ? MoonColors.primary : MoonColors.muted,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
