import 'package:flutter/material.dart';
import '../theme/moon_colors.dart';

class MoonSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;
  final int? divisions;
  final String? label;
  final bool isDisabled;

  const MoonSlider({
    super.key,
    required this.value,
    required this.onChanged,
    this.min = 0.0,
    this.max = 100.0,
    this.divisions,
    this.label,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(label!, style: Theme.of(context).textTheme.labelMedium),
          ),
        Slider(
          value: value,
          min: min,
          max: max,
          divisions: divisions,
          onChanged: isDisabled ? null : onChanged,
          activeColor: MoonColors.primary,
          inactiveColor: MoonColors.border,
        ),
      ],
    );
  }
}
