import 'package:auth_study/widgets/place.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
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
              child: ListView(
                children: List.generate(
                  20,
                  (index) {
                    return const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Place(),
                            Place(),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
