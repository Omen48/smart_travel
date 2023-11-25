import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TopScreen(),
            ),
            SizedBox(
              height: 20,
            ),
            MiddleofScreen(),
            SizedBox(
              height: 20,
            ),
            BottomOFScreen(),
          ],
        ),
      ),
    );
  }
}

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [SizedBox(height: 200, width: 200, child: Image.asset('images/profile.png'))],
    );
  }
}

class MiddleofScreen extends StatelessWidget {
  const MiddleofScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Кнопка 1'),
        Text('Кнопка 1'),
        Text('Кнопка 1'),
        Text('Кнопка 1'),
        Text('Кнопка 1'),
      ],
    );
  }
}

class BottomOFScreen extends StatelessWidget {
  const BottomOFScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 100, width: 100, child: Placeholder());
  }
}
