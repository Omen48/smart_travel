import 'package:auth_study/screens.dart/loadscreen.dart';
import 'package:auth_study/screens.dart/main_screen.dart';
import 'package:auth_study/screens.dart/open_screen.dart';
import 'package:auth_study/values/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/auth': (context) => const OpenScreen(),
        '/mainsreen': (context) => const Mainscreen(),
        '/startscreen':(context) => const StartScreen()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromRGBO(3, 37, 65, 1)),
        appBarTheme: const AppBarTheme(
          backgroundColor: MainTheme.mainThemeColor,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: MainTheme.mainThemeColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed
        ),
        useMaterial3: true,
      ),
      initialRoute: '/startscreen',
    );
  }
}
