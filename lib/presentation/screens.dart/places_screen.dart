// import 'package:auth_study/values/colors.dart';
import 'package:auth_study/presentation/widgets/drawer_places.dart';
// import 'package:auth_study/widgets/icon.dart';
import 'package:auth_study/presentation/widgets/places.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget {
  // const PlacesScreen({super.key});
  

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Image.asset('icons/drawer.png'),
        ),
        title: Center(
          child: SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('images/main_logo.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('icons/search.png'),
            onPressed: () {
              Navigator.of(context).pushNamed('/searchscreen');
            },
          ),
        ],
      ),
      drawer: const DrawerPlaces(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'СОВЕТУЕМ ПОСЕТИТЬ В',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal,
                letterSpacing: 0.26,
                // fontFamily:
                // fontFamily:AutofillHints.telephoneNumberExtension
              ),
            ),
            const SizedBox(
              height: 35,
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
                      imageAsset: 'images/worship3.png',
                      placeName: 'Тауэрский-мост',
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
