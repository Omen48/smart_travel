import 'package:flutter/material.dart';
import 'package:smart_travel/core/theme/colors.dart';
import 'package:smart_travel/presentation/login/widget/login_form.dart';
import 'package:smart_travel/presentation/login/widget/register_form.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LogRegState();
}

class _LogRegState extends State<LoginWidget> {
  int _selectedWidget = 0;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
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
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(
                _selectedWidget == 0 ? AppColors.green : Colors.grey,
              ),
            ),
            child: Text(
              'Авторизация',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedWidget = 1;
              });
            },
            style: ButtonStyle(
              elevation: WidgetStateProperty.all(0),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              backgroundColor: WidgetStateProperty.all(
                _selectedWidget == 1 ? AppColors.green : Colors.grey,
              ),
            ),
            child: Text(
              'Регистрация',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
      _selectedWidget == 0 ? const LoginForm() : const RegisterWidget(),
    ],
  );
}
