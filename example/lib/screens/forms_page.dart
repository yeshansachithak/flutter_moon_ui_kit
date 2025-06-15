import 'package:flutter/material.dart';
import 'package:flutter_moon_ui_kit/flutter_moon_ui_kit.dart';

class FormsPage extends StatelessWidget {
  const FormsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: const MoonAppBar(title: 'Forms'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("MoonInputField", style: MoonTextStyles.titleMedium),
            const SizedBox(height: 8),
            MoonInputField(controller: controller, hint: "Type something..."),
            const SizedBox(height: 24),
            const Text("MoonCheckbox", style: MoonTextStyles.titleMedium),
            MoonCheckbox(
              value: true,
              onChanged: (_) {},
              label: "I agree to terms",
            ),
          ],
        ),
      ),
    );
  }
}
