import 'package:flutter/material.dart';
import 'package:flutter_moon_ui_kit/flutter_moon_ui_kit.dart';
import '../screens/buttons_page.dart';
import '../screens/forms_page.dart';

class NavLayout extends StatefulWidget {
  const NavLayout({super.key});

  @override
  State<NavLayout> createState() => _NavLayoutState();
}

class _NavLayoutState extends State<NavLayout> {
  int _selectedIndex = 0;

  final _pages = const [
    ButtonsPage(),
    FormsPage(),
  ];
  final _navLabels = const ['Buttons', 'Forms'];
  final _navIcons = const [Icons.smart_button, Icons.input];

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 720;

    return Scaffold(
      body: Row(
        children: [
          if (isWide)
            MoonSideNav(
              items: List.generate(_navLabels.length, (i) {
                return MoonSideNavItem(
                  icon: _navIcons[i],
                  label: _navLabels[i],
                  onTap: () => setState(() => _selectedIndex = i),
                  isActive: _selectedIndex == i,
                );
              }),
            ),
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
      bottomNavigationBar: isWide
          ? null
          : MoonBottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (i) => setState(() => _selectedIndex = i),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.smart_button), label: 'Buttons'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.input), label: 'Forms'),
              ],
            ),
    );
  }
}
