import 'package:flutter/material.dart';

import 'package:smart_travel/core/theme/colors.dart';
import 'package:smart_travel/core/widgets/buttons/button.dart';
import 'package:smart_travel/core/widgets/my_textfields.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
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
        MyButton(onPressed: () {}, textstyle: textstyle1),
      ],
    ),
  );
}
