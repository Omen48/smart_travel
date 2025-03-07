import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_travel/core/theme/colors.dart';

import '../../../core/resourses/res.dart';

class DrawerPlaces extends StatefulWidget {
  const DrawerPlaces({super.key});

  @override
  State<DrawerPlaces> createState() => _DrawerPlacesState();
}

class _DrawerPlacesState extends State<DrawerPlaces> {
  final drawerStyle = const TextStyle(
    color: AppColors.blue,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) => Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Center(
            child: Column(
              children: [
                Text('SmartTravel', style: drawerStyle),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(Res.assetsMainLogoBag),
                ),
              ],
            ),
          ),
        ),
        ListTile(title: const Text('Настройка темы'), onTap: () {}),
        ListTile(title: const Text('Настройка рекомендаций'), onTap: () {}),
        ListTile(title: const Text('Настройка маршрута'), onTap: () {}),
      ],
    ),
  );
}
