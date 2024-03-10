import 'package:flutter/material.dart';

// Форма для кнопки

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final TextStyle textstyle;
  final Color buttoncolor;
  const MyButton(
      {super.key,
      required this.onPressed,
      required this.textstyle,
      required this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttoncolor),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 31, vertical: 8),
        ),
      ),
      child: Text(
        'Войти',
        style: textstyle,
      ),
    );
  }
}
