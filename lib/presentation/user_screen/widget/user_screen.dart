import 'package:flutter/material.dart';

import 'package:smart_travel/core/theme/colors.dart';

import 'package:smart_travel/presentation/user_screen/widget/favourite.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      Align(
        child: SizedBox(
          width: 105,
          height: 105,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: ClipOval(child: Placeholder()),
          ),
        ),
      ),
      SizedBox(height: 27),
      Align(
        child: Text(
          'Привет, Ваня!',
          style: TextStyle(
            fontSize: 20,
            fontFamily: AutofillHints.addressCity,
            fontWeight: FontWeight.w800,
            color: Color(0xFF1D3747),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          'Все, что тебе понравилось за последнее \nвремя',
          style: TextStyle(
            color: AppColors.blue,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
      Expanded(child: FavouriteList()),
    ],
  );
}
