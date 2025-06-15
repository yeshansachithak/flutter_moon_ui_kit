import 'package:flutter/material.dart';
import 'package:flutter_moon_ui_kit/flutter_moon_ui_kit.dart';
import 'components/nav_layout.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moon UI Kit Demo',
      debugShowCheckedModeBanner: false,
      theme: MoonTheme.light,
      darkTheme: MoonTheme.dark,
      themeMode: ThemeMode.system,
      home: const NavLayout(),
    );
  }
}
