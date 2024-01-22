
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class MyTextField extends StatelessWidget {
 final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final double paddingvalue;
  const MyTextField(
      {super.key, this.controller, this.hintText, required this.obscureText, required this.paddingvalue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: paddingvalue, left: 35,right: 35),
      child: TextField(
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp("[а-яА-Яa-zA-Z0-9]"),
          ),
          
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 11.0, vertical:4.0),
          isCollapsed: true,
          filled: true,
          constraints: const BoxConstraints(maxHeight: 24, minWidth: 240),
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          suffixIcon: Image.asset('icons/pensil.png'),
        ),
        obscureText:  obscureText ,
      ),
    );
  }
}