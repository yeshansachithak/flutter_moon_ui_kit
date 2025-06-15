import 'package:flutter/material.dart';
import 'package:flutter_moon_ui_kit/flutter_moon_ui_kit.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moon UI Kit Example',
      theme: MoonTheme.light,
      darkTheme: MoonTheme.dark,
      themeMode: ThemeMode.system,
      home: const ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatelessWidget {
  const ExampleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Moon UI Kit")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Buttons", style: MoonTextStyles.titleMedium),
            const SizedBox(height: 8),
            Row(
              children: [
                MoonButton(
                  label: "Primary",
                  onPressed: () {},
                ),
                const SizedBox(width: 12),
                MoonButton(
                  label: "Outlined",
                  onPressed: () {},
                  outline: true,
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text("Tags", style: MoonTextStyles.titleMedium),
            const SizedBox(height: 8),
            const Row(
              children: [
                MoonTag(label: "Design"),
                SizedBox(width: 8),
                MoonTag(label: "Flutter"),
              ],
            ),
            const SizedBox(height: 24),
            const Text("Tabs", style: MoonTextStyles.titleMedium),
            const SizedBox(height: 8),
            MoonTabs(
              tabs: const ["Overview", "Code", "API"],
              activeIndex: 0,
              onTap: (index) {
                print("Selected Tab $index");
              },
            ),
          ],
        ),
      ),
    );
  }
}
