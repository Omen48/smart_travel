import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_travel/core/theme/colors.dart';
import 'package:smart_travel/core/widgets/buttons/button.dart';
import 'package:smart_travel/core/widgets/my_textfields.dart';
import 'package:smart_travel/routes/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? _errorText;

  final _logincontroller = TextEditingController();

  void auth() {
    context.go(RouterPath.places);
  }

  static const textstyle1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    color: AppColors.blue,
  );

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      color: AppColors.green,
    ),
    child: Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          LoginRegisterTextField(
            controller: _logincontroller,
            hintText: 'Номер телефона',
            obscureText: false,
            paddingvalue: 43,
          ),

          if (_errorText != null) ...[
            const SizedBox(height: 10),
            Text(
              '$_errorText',
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: Color.fromRGBO(1, 1, 1, 1),
              ),
            ),
            const SizedBox(height: 10),
          ] else ...[
            const SizedBox(height: 20),
          ],
          MyButton(onPressed: auth, textstyle: textstyle1),
        ],
      ),
    ),
  );
}
