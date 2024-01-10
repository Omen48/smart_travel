import 'package:auth_study/widgets/places.dart';
import 'package:flutter/material.dart';
import 'package:auth_study/values/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static const textfield1 = InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 11, vertical: 8),
    isCollapsed: true,
  );
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: textfield1,
              ),
            ),
            // const SizedBox(
            //   height: 35,
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
              child: Text(
                'Все, что ты искал за последнее время',
                style: TextStyle(
                  color: SecondMainTheme.secondMainThemeColor,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
            Expanded(
              child: ListView(children: const [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Place(
                      imageAsset: 'images/worship1.png',
                      placeName: 'Бурдж-Халифа',
                    ),
                    Place(
                      imageAsset: 'images/worship2.png',
                      placeName: 'Небоскреб',
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
