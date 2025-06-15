import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';
import '../theme/moon_text_styles.dart';

class MoonBreadcrumbItem {
  final String label;
  final VoidCallback? onTap;

  const MoonBreadcrumbItem({required this.label, this.onTap});
}

class MoonBreadcrumbs extends StatelessWidget {
  final List<MoonBreadcrumbItem> items;

  const MoonBreadcrumbs({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(items.length, (index) {
        final item = items[index];
        final isLast = index == items.length - 1;

        return Row(
          children: [
            GestureDetector(
              onTap: isLast ? null : item.onTap,
              child: Text(
                item.label,
                style: MoonTextStyles.bodySmall.copyWith(
                  color: isLast ? MoonColors.text : MoonColors.primary,
                  fontWeight: isLast ? FontWeight.normal : FontWeight.w500,
                ),
              ),
            ),
            if (!isLast)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(Icons.chevron_right,
                    size: 16, color: MoonColors.muted),
              ),
          ],
        );
      }),
    );
  }
}
