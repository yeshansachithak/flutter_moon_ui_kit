import 'package:flutter/material.dart';
import '../../theme/moon_colors.dart';

class MoonRatingStars extends StatelessWidget {
  final int rating; // 0-5
  final ValueChanged<int> onRate;
  final double size;

  const MoonRatingStars({
    super.key,
    required this.rating,
    required this.onRate,
    this.size = 26,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (i) {
        final filled = i < rating;
        return InkWell(
          onTap: () => onRate(i + 1),
          child: Icon(
            filled ? Icons.star : Icons.star_border,
            size: size,
            color: filled ? MoonColors.primary : MoonColors.muted,
          ),
        );
      }),
    );
  }
}
