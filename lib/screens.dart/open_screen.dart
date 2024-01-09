import 'package:auth_study/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TopOfPAge(),
            MiddleOfPage(),
            BottomOfPage(),
          ],
        ),
      ),
    );
  }
}

class TopOfPAge extends StatelessWidget {
  static const textstyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  const TopOfPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 51,
          width: 51,
          child: Image.asset('images/main_logo.png'),
        ),
      ],
    );
  }
}

class MiddleOfPage extends StatefulWidget {
  const MiddleOfPage({super.key});

  @override
  State<MiddleOfPage> createState() => _MiddleOfPAgeState();
}

class _MiddleOfPAgeState extends State<MiddleOfPage> {
  String? _errorText;
  final _logincontroller = TextEditingController(text: 'admin');
  final _passcontroller = TextEditingController(text: 'admin');
  void auth() {
    if (_logincontroller.text == 'admin' && _passcontroller.text == 'admin') {
      _errorText = null;
      Navigator.of(context).pushReplacementNamed('/mainsreen');
    } else {
      _errorText = 'Неправильный логин';
    }
    setState(() {});
  }

  static const textfield = InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
    isCollapsed: true,
  );
  static const textstyle1 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_errorText != null) ...[
          Text(
            '$_errorText',
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
              color: Color.fromRGBO(3, 37, 60, 1),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
        const Text(
          'Логин',
          style: textstyle1,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _logincontroller,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp("[а-яА-Яa-zA-Z0-9]"),
            ),
          ],
          decoration: textfield,
        ),
        const SizedBox(height: 10),
        const Text('Пароль', style: textstyle1),
        const SizedBox(height: 5),
        TextField(
          controller: _passcontroller,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp("[а-яА-Яa-zA-Z0-9]")),
          ],
          decoration: textfield,
          obscureText: true,
        ),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: auth,
              child: const Text('Войти'),
            ),
            if (_errorText != null) ...[
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Забыли пароль?',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/registerscreen');
              },
              child: const Text(
                'Регистрация',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class BottomOfPage extends StatelessWidget {
  const BottomOfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'SmartTravel',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900,letterSpacing: 0.8, color:SecondMainTheme.secondMainThemeColor ),
      
    );
  }
}
