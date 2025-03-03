import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_travel/core/resourses/res.dart';
import 'package:smart_travel/core/theme/colors.dart';

class LoginRegisterTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final double paddingvalue;

  const LoginRegisterTextField(
      {super.key,
      this.controller,
      this.hintText,
      required this.obscureText,
      required this.paddingvalue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingvalue, left: 35, right: 35),
      child: TextField(
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp("[а-яА-Яa-zA-Z0-9]"),
          ),
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 11.0, vertical: 4.0),
          isCollapsed: true,
          filled: true,
          constraints: const BoxConstraints(maxHeight: 38, minWidth: 240),
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          suffixIcon: Padding(
              padding: EdgeInsets.all(5),
              child: SvgPicture.asset(Res.assetsPencil)),
        ),
        obscureText: obscureText,
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  final Color color = AppColors.green;

  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 32),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
            prefixIcon: const Icon(Icons.search),
            fillColor: color,
            filled: true,
            constraints: const BoxConstraints(maxHeight: 40, minWidth: 360),
            focusColor: color),
      ),
    );
  }
}
