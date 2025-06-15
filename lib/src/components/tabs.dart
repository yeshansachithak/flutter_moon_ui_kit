import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonTabs extends StatelessWidget {
  final List<String> tabs;
  final int activeIndex;
  final void Function(int) onTap;

  const MoonTabs({
    super.key,
    required this.tabs,
    required this.activeIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: tabs.asMap().entries.map((entry) {
        final index = entry.key;
        final label = entry.value;
        final isActive = index == activeIndex;

        return GestureDetector(
          onTap: () => onTap(index),
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: isActive
                  ? theme.colorScheme.primary.withOpacity(0.1)
                  : theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isActive ? theme.colorScheme.primary : MoonColors.border,
              ),
            ),
            child: Text(
              label,
              style: MoonTextStyles.bodyMedium.copyWith(
                color: isActive
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurface,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
