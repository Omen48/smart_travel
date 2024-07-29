// import 'package:auth_study/presentation/theme/app_theme.dart';
import 'package:auth_study/presentation/theme/colors.dart';
import 'package:auth_study/presentation/widgets/buttons.dart';
import 'package:auth_study/presentation/widgets/my_textfields.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SmartTravelLogo(),
            LogRegForm(),
            BottomOfPage(),
          ],
        ),
      ),
    );
  }
}

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
        Transform.translate(
          offset: const Offset(-83, 118), // Смещаем первую кнопку на 20 вниз
          child: ElevatedButton(
            autofocus: true,
            onPressed: () {
              setState(() {
                _selectedWidget = 0;
              });
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width * 0.391, 70)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
              backgroundColor: MaterialStateProperty.all(
                  _selectedWidget == 0 ? AppColors.green : Colors.grey),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 40.0),
              child: Text(
                'Авторизация',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(75, 40),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedWidget = 1;
              });
            },
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width * 0.426, 70)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
              backgroundColor: MaterialStateProperty.all(
                  _selectedWidget == 1 ? AppColors.green : Colors.grey),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 40.0,),
              child: Text(
                'Регистрация',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        _selectedWidget == 0 ? const LoginForm() : const RegForm(),
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
          color: AppColors.blue),
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

  final _logincontroller = TextEditingController(text: 'admin');

  final _passcontroller = TextEditingController(text: 'admin');

  void auth() {
    if (_logincontroller.text == 'admin' && _passcontroller.text == 'admin') {
      _errorText = null;
      context.go('/places');
    } else {
      _errorText = 'Неправильный логин или пароль';
    }
    setState(() {});
  }

  static const textstyle1 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.blue);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.795,
      height: 274,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.green,
        ),
        child: Column(
          children: [
            LoginRegisterTextField(
              controller: _logincontroller,
              hintText: 'Email или пароль',
              obscureText: false,
              paddingvalue: 43,
            ),
            LoginRegisterTextField(
              controller: _passcontroller,
              hintText: 'Пароль',
              obscureText: true,
              paddingvalue: 25,
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
              const SizedBox(height: 38),
            ],
            MyButton(
              onPressed: auth,
              textstyle: textstyle1,
            ),
            if (_errorText != null) ...[
              TextButton(
                onPressed: () {
                  context.go('/auth/recover');
                },
                child: const Text(
                  'Забыли пароль?',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w200),
                ),
              ),
            ]
          ],
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
  static const textstyle1 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.blue);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.795,
      height: 420,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.green,
        ),
        child: Column(
          children: [
            const LoginRegisterTextField(
              obscureText: false,
              hintText: 'Имя',
              paddingvalue: 35,
            ),
            const LoginRegisterTextField(
              obscureText: false,
              hintText: 'Фамилия',
              paddingvalue: 25,
            ),
            const LoginRegisterTextField(
              obscureText: false,
              hintText: 'Email',
              paddingvalue: 25,
            ),
            const LoginRegisterTextField(
              obscureText: true,
              hintText: 'Пароль',
              paddingvalue: 25,
            ),
            const LoginRegisterTextField(
              obscureText: true,
              hintText: 'Подтвердите пароль',
              paddingvalue: 25,
            ),
            const SizedBox(height: 33),
            MyButton(
              onPressed: () {},
              textstyle: textstyle1,
            )
          ],
        ),
      ),
    );
  }
}
