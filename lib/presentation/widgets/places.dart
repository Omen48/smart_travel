import 'package:auth_study/presentation/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// Модель данных для места
class PlaceData {
  final String imageAsset;
  final String placeName;

  const PlaceData({required this.imageAsset, required this.placeName});
}

// class MySliverSimpleGridDelegateWithFixedCrossAxisCount extends SliverGridDelegateWithFixedCrossAxisCount {
//     @override
//       final int crossAxisCount;
//     @override
//       final double mainAxisSpacing;
//     @override
//       final double crossAxisSpacing;

//   MySliverSimpleGridDelegateWithFixedCrossAxisCount(this.crossAxisCount, this.mainAxisSpacing, this.crossAxisSpacing, {required int crossAxisCount}) : super(crossAxisCount: 0);
//   }

// Список рекомендаций
class PlacesList extends StatelessWidget {
  PlacesList({super.key});

  final List<PlaceData> places = [
    const PlaceData(
        imageAsset: 'images/worship1.png', placeName: 'Бурдж-Халифа'),
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      // padding: const EdgeInsets.symmetric(horizontal: 15), // Отступы по краям
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemCount: places.length,
      itemBuilder: (context, index) {
        return Center(
          child: Place(
            imageAsset: places[index].imageAsset,
            placeName: places[index].placeName,
          ),
        );
      },
    );
  }
}

// История поиска
class SearchPlacesList extends StatelessWidget {
  SearchPlacesList({super.key});

  final List<PlaceData> searchplaces = [
    const PlaceData(imageAsset: 'images/worship2.png', placeName: '2 Башни'),
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      // padding: const EdgeInsets.symmetric(horizontal: 15), // Отступы по краям
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemCount: searchplaces.length,
      itemBuilder: (context, index) {
        return Center(
          child: Place(
            imageAsset: searchplaces[index].imageAsset,
            placeName: searchplaces[index].placeName,
          ),
        );
      },
    );
  }
}

// Форма отображения места
class Place extends StatelessWidget {
  final String imageAsset;
  final String placeName;
  const Place({super.key, required this.imageAsset, required this.placeName});

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
              height: 179,
              width: 166,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(imageAsset, fit: BoxFit.cover),
              ),
            ),
            const Positioned(top: -3, left: -3, child: CloseIcon()),
            const Positioned(top: -3, right: -3, child: LikeIcon()),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Text(
            placeName,
            style: placeStyle,
          ),
        )
      ],
    );
  }
}

// Исконка закрытия
class CloseIcon extends StatelessWidget {
  const CloseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Image.asset('icons/clear.png'));
  }
}

// иконка лайка
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
