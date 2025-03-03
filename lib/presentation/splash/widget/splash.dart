import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_travel/routes/go_router.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      context.go(RouterPath.auth);
    });
    return Center(child: Text('тестовый стартовый экрран'));
  }
}
