import 'package:go_router/go_router.dart';
// import 'package:auth_study/values/colors.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  void onSelectedTab(context, index) {
    navigationShell.goBranch(index,
        initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int index) => onSelectedTab(context, index),
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 36,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 36,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map_outlined,
              size: 36,
            ),
            activeIcon: Icon(Icons.map_rounded, size: 36),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 36,
            ),
            activeIcon: Icon(
              Icons.person_rounded,
              size: 36,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
