import 'package:flutter/material.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Image.asset('icons/clear.png'));
  }
}
