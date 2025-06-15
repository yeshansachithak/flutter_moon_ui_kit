import 'package:flutter/material.dart';
import 'package:flutter_moon_ui_kit/flutter_moon_ui_kit.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MoonAppBar(title: 'Buttons'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("MoonButton", style: MoonTextStyles.titleMedium),
            const SizedBox(height: 8),
            Row(
              children: [
                MoonButton(label: "Primary", onPressed: () {}),
                const SizedBox(width: 12),
                MoonButton(label: "Outlined", onPressed: () {}, outline: true),
              ],
            ),
            const SizedBox(height: 24),
            const Text("MoonIconButton", style: MoonTextStyles.titleMedium),
            const SizedBox(height: 8),
            Row(
              children: [
                MoonIconButton(icon: Icons.favorite, onPressed: () {}),
                const SizedBox(width: 12),
                MoonIconButton(
                    icon: Icons.star, outline: true, onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
