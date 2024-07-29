import 'package:flutter/material.dart';

// Форма для кнопки

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;

  final TextStyle textstyle;

  const MyButton({
    super.key,
    required this.onPressed,
    required this.textstyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        'Войти',
        style: textstyle,
      ),
    );
  }
}
