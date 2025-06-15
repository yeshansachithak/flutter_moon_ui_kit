import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonImage extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double height;
  final BoxFit fit;
  final BorderRadius borderRadius;
  final Widget? fallback;

  const MoonImage({
    super.key,
    required this.imageUrl,
    this.width = double.infinity,
    this.height = 200,
    this.fit = BoxFit.cover,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.fallback,
  });

  @override
  Widget build(BuildContext context) {
    final hasImage = imageUrl != null && imageUrl!.isNotEmpty;

    return ClipRRect(
      borderRadius: borderRadius,
      child: hasImage
          ? Image.network(
              imageUrl!,
              width: width,
              height: height,
              fit: fit,
              errorBuilder: (_, __, ___) =>
                  fallback ??
                  Container(
                    width: width,
                    height: height,
                    color: MoonColors.muted.withOpacity(0.1),
                    child:
                        const Icon(Icons.broken_image, color: MoonColors.muted),
                  ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  width: width,
                  height: height,
                  color: MoonColors.muted.withOpacity(0.05),
                  child: const Center(
                      child: CircularProgressIndicator(strokeWidth: 2)),
                );
              },
            )
          : fallback ??
              Container(
                width: width,
                height: height,
                color: MoonColors.muted.withOpacity(0.05),
                child: const Icon(Icons.image, color: MoonColors.muted),
              ),
    );
  }
}
