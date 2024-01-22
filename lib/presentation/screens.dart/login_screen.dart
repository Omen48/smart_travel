import 'package:auth_study/presentation/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SmartTravelLogo(),
              LogRegForm(),
              BottomOfPage(),
            ],
          ),
        ),
      ),
    );
  }
}

// class OpenScreen extends StatelessWidget {
//   const OpenScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Определение, открыта ли клавиатура
//     final bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
//     final double space = isKeyboardOpen ? 10 : 30; // Меньше пространства, если клавиатура открыта

//     return Scaffold(
//       body: SingleChildScrollView( // Использование SingleChildScrollView
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 40),
//           child: Column(
//             children: [
//               // Использование Container для сохранения пространства вокруг
//               SmartTravelLogo(),
//               Container(height: isKeyboardOpen ? 20 : 120), // Высота изменяется в зависимости от состояния клавиатуры
//               LoginForm(),
//               SizedBox(height: space),
//               BottomOfPage(),
//               Container(height: isKeyboardOpen ? 20 : 120), // Высота изменяется в зависимости от состояния клавиатуры
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class SmartTravelLogo extends StatelessWidget {
  static const textstyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  const SmartTravelLogo({super.key});

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

class LogRegForm extends StatefulWidget {
  const LogRegForm({super.key});

  @override
  State<LogRegForm> createState() => _LogRegState();
}

class _LogRegState extends State<LogRegForm> {
  int _selectedWidget = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              autofocus: true,

              onPressed: () {
                setState(() {
                  _selectedWidget = 0;
                });
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(_selectedWidget ==0?  ThirdMainTheme.thirdMainTheme: Colors.grey),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.only(left: 40, right: 39, top: 8, bottom: 42),
                ),
              ),
              child: const Text(
                'Авторизация',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    _selectedWidget = 1;
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_selectedWidget ==0?Colors.grey :ThirdMainTheme.thirdMainTheme ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.only(left: 40, right: 30, top: 8, bottom: 42),
                ),
              ),
              child: const Text(
                'Регистрация',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        if (_selectedWidget == 0) LoginForm(),
        if (_selectedWidget == 1) RegForm(),
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
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.8,
          color: SecondMainTheme.secondMainThemeColor),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? _errorText;

  final _logincontroller = TextEditingController();

  final _passcontroller = TextEditingController();

  void auth() {
    if (_logincontroller.text == 'admin' && _passcontroller.text == 'admin') {
      _errorText = null;
      Navigator.of(context).pushReplacementNamed('/mainsreen');
    } else {
      _errorText = 'Неправильный логин или пароль';
    }
    setState(() {});
  }

  static const textstyle1 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w800,
      color: SecondMainTheme.secondMainThemeColor);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 274,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ThirdMainTheme.thirdMainTheme,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            children: [
              const SizedBox(
                height: 43,
              ),
              TextField(
                controller: _logincontroller,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp("[а-яА-Яa-zA-Z0-9]"),
                  ),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 11.0, vertical: 9.0),
                  isCollapsed: true,
                  filled: true,
                  constraints:
                      const BoxConstraints(maxHeight: 24, maxWidth: 240),
                  fillColor: Colors.white,
                  hintText: 'Email или телефон',
                  hintStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w300),
                  suffixIcon: Image.asset('icons/pensil.png'),
                ),
              ),
              const SizedBox(height: 25),
              TextField(
                controller: _passcontroller,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp("[а-яА-Яa-zA-Z0-9]")),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
                  isCollapsed: true,
                  filled: true,
                  constraints:
                      const BoxConstraints(maxHeight: 24, maxWidth: 240),
                  fillColor: Colors.white,
                  hintText: 'Пароль',
                  hintStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w300),
                  suffixIcon: Image.asset('icons/pensil.png'),
                ),
                obscureText: true,
              ),
              if (_errorText != null) ...[
                const SizedBox(height: 11),
                Text(
                  '$_errorText',
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Color.fromRGBO(1, 1, 1, 1),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ] else ...[
                const SizedBox(height: 38)
              ],
              ElevatedButton(
                onPressed: auth,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(ButtonColor.buttonTheme),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 31, vertical: 8),
                  ),
                ),
                child: const Text(
                  'Войти',
                  style: textstyle1,
                ),
              ),
              if (_errorText != null) ...[
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Забыли пароль?',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w200),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class RegForm extends StatefulWidget {
  const RegForm({super.key});

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 355,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ThirdMainTheme.thirdMainTheme,
        ),)
    );
  }
}
