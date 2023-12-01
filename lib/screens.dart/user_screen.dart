import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
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
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: const [
            UserInfo(),
            SizedBox(
              height: 30,
            ),
            Menu(menuRow: firstMenuRow),
            SizedBox(
              height: 30,
            ),
            Menu(menuRow: seconMenuRow),
            SizedBox(
              height: 30,
            ),
            Menu(menuRow: thirdMenuRow),
          ],
        ),
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
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: const Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Photo(),
                SizedBox(height: 8),
                Name(),
                SizedBox(height: 8),
                PhoneNum(),
                SizedBox(height: 8),
                Nickname(),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Text(
              'Изм.',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Nickname extends StatelessWidget {
  const Nickname({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@isblinov',
      style: TextStyle(fontSize: 15),
    );
  }
}

class PhoneNum extends StatelessWidget {
  const PhoneNum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7-999-216-90-88',
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}

class Photo extends StatelessWidget {
  const Photo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: ClipOval(
          child: Image.asset('images/profile.png'),
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Иван Блинов',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 25,
      ),
    );
  }
}
