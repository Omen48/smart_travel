import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenuWidget extends StatelessWidget {
  const BottomMenuWidget({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  Future<void> onSelectedTab(BuildContext context, index) async =>
      navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
    body: navigationShell,
    bottomNavigationBar: BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (int index) => onSelectedTab(context, index),
      currentIndex: navigationShell.currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, size: 36),
          activeIcon: Icon(Icons.home, size: 36),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined, size: 36),
          activeIcon: Icon(Icons.map_rounded, size: 36),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, size: 36),
          activeIcon: Icon(Icons.person_rounded, size: 36),
          label: '',
        ),
      ],
    ),
  );
}
