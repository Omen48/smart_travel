import 'dart:async';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  // @override
  // void initState() {
  //    implement initState
  //   super.initState();
  //   loadData();
  // }

  //  Future loadData() async {
  //   // Запуск одновременно двух Future: задержка и загрузка данных
  //   await Future.wait([
  //     Future.delayed(Duration(seconds: 2)),
  //     loadServerData() // Это ваша функция для загрузки данных
  //   ]);

  //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MainScreen()));
  // }

  // Future loadServerData() async {
  //   // Ваш код для загрузки данных с сервера
  // }


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
