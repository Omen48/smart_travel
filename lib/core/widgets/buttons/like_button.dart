import 'package:flutter/material.dart';

class AddToFavouriteButton extends StatefulWidget {
  const AddToFavouriteButton({super.key});

  @override
  State<AddToFavouriteButton> createState() => _AddToFavouriteButtonState();
}

class _AddToFavouriteButtonState extends State<AddToFavouriteButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      icon:
          isLiked
              ? Image.asset('icons/heart_filled.png')
              : Image.asset('icons/heart.png'),
    );
  }
}
