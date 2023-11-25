import 'package:auth_study/screens.dart/map_screen.dart';
import 'package:auth_study/screens.dart/places_screen.dart';

import 'package:auth_study/screens.dart/user_screen.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedScreen = 0;

  List<Widget> currentScreen = const <Widget>[
    PlacesScreen(),
    MapScreen(),
    UserInfoScreen()
  ];

  void onSelectedTab(int index) {
    if (_selectedScreen == index) return;
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'SmartTravel',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Center(
        child: currentScreen[_selectedScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Места',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_rounded),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Обо мне',
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
