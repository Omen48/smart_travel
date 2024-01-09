import 'package:flutter/material.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Image.asset('icons/clear.png'));
  }
}

class LikeIcon extends StatefulWidget {
  const LikeIcon({super.key});

  @override
  State<LikeIcon> createState() => _LikeIconState();
}

class _LikeIconState extends State<LikeIcon> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
      },
      icon: isLiked
          ? Image.asset('icons/heart_filled.png')
          : Image.asset('icons/heart.png'),
    );
  }
}
