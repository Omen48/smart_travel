import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Smart Travel',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
    return const Column(
      children: [
        Text('Добро пожаловать', style: textstyle),
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
            ElevatedButton(onPressed: auth, child: const Text('Войти'),),
            if (_errorText != null)...
            [TextButton(
              onPressed: () {},
              child: const Text(
                'Забыли пароль?',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),],
            TextButton(
              onPressed: () {},
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

class BottomOfPage extends StatefulWidget {
  const BottomOfPage({super.key});

  @override
  State<BottomOfPage> createState() => _BottomOfPageState();
}

class _BottomOfPageState extends State<BottomOfPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "images/apple_logo.png",
                ),
              ),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/gosuslugi_logo.png")),
            ),
            SizedBox(
              width: 70,
              height: 70,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("images/google_logo.png"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
