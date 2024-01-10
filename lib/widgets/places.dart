import 'package:auth_study/values/colors.dart';
import 'package:auth_study/widgets/icons.dart';
import 'package:flutter/material.dart';

class Place extends StatefulWidget {
  final String imageAsset;
  final String placeName;
 const Place({super.key,required this.imageAsset, required this.placeName});

  @override
  State<Place> createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
    final placeStyle = const TextStyle(
    color: SecondMainTheme.secondMainThemeColor,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );
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
                child: Image.asset(widget.imageAsset, fit: BoxFit.cover),
              ),
            ),
            const Positioned(
              top: -3,
              left: -3,
              child: CloseIcon()
            ),
            const Positioned(
              top: -3,
              right: -3,
              child: LikeIcon()
            ),
          ],
        ),
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(widget.placeName, style: placeStyle,),
        )
      ],
    );
  }
}
