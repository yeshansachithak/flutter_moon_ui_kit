import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonStepperStep {
  final String title;
  final String? description;
  final bool isCompleted;

  const MoonStepperStep({
    required this.title,
    this.description,
    this.isCompleted = false,
  });
}

class MoonStepperVertical extends StatelessWidget {
  final List<MoonStepperStep> steps;
  final int activeStep;

  const MoonStepperVertical({
    super.key,
    required this.steps,
    required this.activeStep,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(steps.length, (index) {
        final step = steps[index];
        final isActive = index == activeStep;
        final isCompleted = step.isCompleted;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Circle / Check Icon
            Column(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: isCompleted
                      ? MoonColors.success
                      : isActive
                          ? MoonColors.primary
                          : MoonColors.border,
                  child: Icon(
                    isCompleted ? Icons.check : Icons.circle,
                    size: 14,
                    color: isCompleted
                        ? Colors.white
                        : isActive
                            ? Colors.white
                            : MoonColors.muted,
                  ),
                ),
                if (index < steps.length - 1)
                  Container(
                    width: 2,
                    height: 40,
                    color: MoonColors.border,
                  ),
              ],
            ),
            const SizedBox(width: 12),
            // Step content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      step.title,
                      style: MoonTextStyles.bodyMedium.copyWith(
                        fontWeight:
                            isActive ? FontWeight.w600 : FontWeight.normal,
                        color: isActive ? MoonColors.primary : MoonColors.text,
                      ),
                    ),
                    if (step.description != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          step.description!,
                          style: MoonTextStyles.bodySmall
                              .copyWith(color: MoonColors.muted),
                        ),
                      ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
