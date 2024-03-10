import 'package:auth_study/presentation/widgets/my_textfields.dart';
import 'package:auth_study/presentation/widgets/places.dart';
import 'package:flutter/material.dart';
import 'package:auth_study/presentation/theme/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Image.asset('icons/back.png'),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextField(),
          const Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 24),
            child: Text(
              'Все, что ты искал за последнее время',
              style: TextStyle(
                color: AppColors.blue,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
          Flexible(child: SearchPlacesList())
        ],
      ),
    );
  }
}
