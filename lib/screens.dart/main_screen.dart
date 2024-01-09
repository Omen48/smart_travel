import 'package:auth_study/screens.dart/map_screen.dart';
import 'package:auth_study/screens.dart/places_screen.dart';

import 'package:auth_study/screens.dart/user_screen.dart';
import 'package:auth_study/values/colors.dart';
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

  bool isSearchVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: SecondMainTheme.secondMainThemeColor),
              child: Text('SmartTravel'),
            ),
            ListTile(
              title: const Text('TestItem1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Test'),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('images/main_logo.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // setState(() {
              //   isSearchVisible = true;
              // })
              Navigator.of(context).pushNamed('/searchscreen');
            },
          ),
        ],
      ),
      body: Center(
        child: currentScreen[_selectedScreen],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedScreen,
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
            label: 'Места',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map_outlined,
              size: 36,
            ),
            activeIcon: Icon(Icons.map_rounded, size: 36),
            label: 'Карта',
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
            label: 'Обо мне',
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
