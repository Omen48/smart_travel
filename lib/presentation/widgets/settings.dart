import 'package:auth_study/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

class SettingsUser extends StatefulWidget {
  static const List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite, '1 строчка'),
    MenuRowData(Icons.call, '2 строчка'),
    MenuRowData(Icons.computer, '3 строчка'),
    MenuRowData(Icons.wysiwyg, '4 строчка'),
  ];
  static const List<MenuRowData> seconMenuRow = [
    MenuRowData(Icons.notification_add, '5 строчка'),
    MenuRowData(Icons.privacy_tip, '6 строчка'),
    MenuRowData(Icons.data_usage, '7 строчка'),
    MenuRowData(Icons.brush, '8 строчка'),
    MenuRowData(Icons.language, '9 строчка'),
    MenuRowData(Icons.wysiwyg, '10 строчка'),
  ];
  static const List<MenuRowData> thirdMenuRow = [
    MenuRowData(Icons.notification_add, '11 строчка'),
    MenuRowData(Icons.privacy_tip, '12 строчка'),
    MenuRowData(Icons.data_usage, '13 строчка'),
    MenuRowData(Icons.brush, '14 строчка'),
    MenuRowData(Icons.language, '15 строчка'),
    MenuRowData(Icons.wysiwyg, '16 строчка'),
  ];
  const SettingsUser({super.key});

  @override
  State<SettingsUser> createState() => _SettingsUserState();
}

class _SettingsUserState extends State<SettingsUser> {
  final settingsStyle = const TextStyle(
    color: AppColors.blue,
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
                    style: settingsStyle,
                  ),
                  SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset('images/main_logo.png'))
                ],
              ),
            ),
          ),
          const Menu(menuRow: SettingsUser.firstMenuRow),
          const SizedBox(
            height: 30,
          ),
          const Menu(menuRow: SettingsUser.seconMenuRow),
          const SizedBox(
            height: 30,
          ),
          const Menu(menuRow: SettingsUser.thirdMenuRow)
        ],
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  const MenuRowData(this.icon, this.text);
}

class Menu extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const Menu({super.key, required this.menuRow});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: menuRow.map((data) => MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const MenuWidgetRow({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          const SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
