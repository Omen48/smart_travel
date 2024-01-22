import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            },
          ),
        ],
      ),
      body: SizedBox(
        child: Image.asset('images/map.png'),
      ),
    );
  }
}
