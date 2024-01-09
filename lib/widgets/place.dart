import 'package:auth_study/widgets/icon.dart';
import 'package:flutter/material.dart';

class Place extends StatefulWidget {
  const Place({super.key});

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              // color: Colors.grey,
              height: 166,
              width: 166,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('images/worship1.png', fit: BoxFit.cover),
              ),
            ),
            const Positioned(
              top: 0,
              left: 0,
              child: CloseIcon()
            ),
            const Positioned(
              top: 0,
              right: 0,
              child: LikeIcon()
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text('Название места'),
        )
      ],
    );
  }
}
