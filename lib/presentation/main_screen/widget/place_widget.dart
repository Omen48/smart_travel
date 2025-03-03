import 'package:flutter/material.dart';

import 'package:smart_travel/core/theme/colors.dart';
import 'package:smart_travel/core/widgets/buttons/like_button.dart';

class Place extends StatelessWidget {
  const Place({required this.imageAsset, required this.placeName, super.key});
  final String imageAsset;
  final String placeName;

  final placeStyle = const TextStyle(
    color: AppColors.blue,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              height: 179,
              width: 166,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(imageAsset, fit: BoxFit.cover),
              ),
            ),
            const Positioned(top: -3, left: -3, child: CloseButton()),
            const Positioned(top: -3, right: -3, child: AddToFavouriteButton()),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Flexible(child: Text(placeName, style: placeStyle)),
        ),
      ],
    ),
  );
}
