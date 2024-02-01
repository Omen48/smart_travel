import 'package:auth_study/presentation/theme/colors.dart';
import 'package:auth_study/presentation/screens.dart/loadscreen.dart';
import 'package:auth_study/presentation/screens.dart/main_screen.dart';
import 'package:auth_study/presentation/screens.dart/login_screen.dart';
import 'package:auth_study/presentation/screens.dart/recover_screen.dart';
import 'package:auth_study/presentation/screens.dart/search_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/auth': (context) => const OpenScreen(),
        '/mainsreen': (context) => const Mainscreen(),
        '/startscreen':(context) => const StartScreen(),
        '/registerscreen':(context) => const RecoverScreen(),
        '/searchscreen':(context)=> const SearchScreen()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromRGBO(3, 37, 65, 1)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.blue,
          unselectedItemColor: Colors.black,
        ),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      initialRoute: '/startscreen',
    );
  }
}
