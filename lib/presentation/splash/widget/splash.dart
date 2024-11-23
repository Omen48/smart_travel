import 'dart:async';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      context.go('/auth');
    });
    return const Scaffold(
      body: Center(
        child: Text('тестовый стартовый экрран'),
      ),
    );
  }
}
