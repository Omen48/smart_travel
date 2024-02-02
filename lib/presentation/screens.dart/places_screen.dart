import 'package:auth_study/presentation/widgets/drawer_places.dart';
import 'package:auth_study/presentation/widgets/places.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('icons/drawer.png'),
            );
          }
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
              // Navigator.of(context).pushNamed('/searchscreen');
              context.go("/places/search");
            },
          ),
        ],
      ),
      drawer: const DrawerPlaces(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
                left: 15.0, right: 15.0, top: 42.0, bottom: 35.0),
            child: Text(
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
          ),
          Flexible(child: PlacesList())
        ],
      ),
    );
  }
}
