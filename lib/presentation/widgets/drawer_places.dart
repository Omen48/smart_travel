import 'package:auth_study/presentation/values/colors.dart';
import 'package:flutter/material.dart';



//настройки в поле рекомендаций

class DrawerPlaces extends StatefulWidget {
  const DrawerPlaces({super.key});

  @override
  State<DrawerPlaces> createState() => _DrawerPlacesState();
}

class _DrawerPlacesState extends State<DrawerPlaces> {
  final drawerStyle = const TextStyle(
    color: SecondMainTheme.secondMainThemeColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  Text(
                    'SmartTravel',
                    style: drawerStyle,
                  ),
                  SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset('images/main_logo.png'))
                ],
              ),
            ),
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
          ),
        ],
      ),
    );
  }
}