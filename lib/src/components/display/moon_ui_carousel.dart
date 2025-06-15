import 'package:flutter/material.dart';
import '../../theme/moon_theme_extension.dart';

class MoonCarousel extends StatefulWidget {
  final List<Widget> items;
  final double height;
  final Duration autoPlayInterval;

  const MoonCarousel({
    super.key,
    required this.items,
    this.height = 200,
    this.autoPlayInterval = const Duration(seconds: 4),
  });

  @override
  State<MoonCarousel> createState() => _MoonCarouselState();
}

class _MoonCarouselState extends State<MoonCarousel> {
  final PageController _controller = PageController();
  int _page = 0;

  @override
  void initState() {
    super.initState();
    if (widget.items.length > 1) {
      Future.doWhile(() async {
        await Future.delayed(widget.autoPlayInterval);
        if (!mounted) return false;
        _page = (_page + 1) % widget.items.length;
        _controller.animateToPage(_page,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut);
        return true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final radius =
        Theme.of(context).extension<MoonThemeExtension>()?.borderRadius ?? 12;

    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        height: widget.height,
        child: PageView(controller: _controller, children: widget.items),
      ),
    );
  }
}
