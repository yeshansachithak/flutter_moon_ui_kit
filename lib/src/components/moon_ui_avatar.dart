import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonAvatar extends StatelessWidget {
  final double size;
  final String? imageUrl;
  final String? initials;
  final Color? backgroundColor;

  const MoonAvatar({
    super.key,
    this.size = 40,
    this.imageUrl,
    this.initials,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = imageUrl != null && imageUrl!.isNotEmpty;

    return CircleAvatar(
      radius: size / 2,
      backgroundColor: backgroundColor ?? MoonColors.primary.withOpacity(0.2),
      backgroundImage: hasImage ? NetworkImage(imageUrl!) : null,
      child: hasImage
          ? null
          : Text(
              initials ?? '',
              style: TextStyle(
                fontSize: size * 0.4,
                fontWeight: FontWeight.w600,
                color: MoonColors.primary,
              ),
            ),
    );
  }
}
