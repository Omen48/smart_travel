import 'package:flutter/material.dart';

class RecoverScreen extends StatefulWidget {
  const RecoverScreen({super.key});

  @override
  State<RecoverScreen> createState() => _RecoverScreenState();
}

class _RecoverScreenState extends State<RecoverScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Здесь будет функционал для регистрации пользователя',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
