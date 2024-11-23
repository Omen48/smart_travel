

import 'package:flutter/material.dart';
import 'package:smart_travel/core/theme/app_theme.dart';
import 'package:smart_travel/routes/go_router.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
