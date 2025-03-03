import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../main_screen/controller/cubit_controller.dart';
import '../../main_screen/widget/place_widget.dart';

class FavouriteList extends StatelessWidget {
  FavouriteList({super.key});

  final List<PlaceData> favList = [
    const PlaceData(
      imageAsset: 'images/worship3.png',
      placeName: 'Тауэрский мост',
    ),
    const PlaceData(
      imageAsset: 'images/worship3.png',
      placeName: 'Тауэрский мост',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: favList.length,
      itemBuilder: (context, index) {
        return Center(
          child: Place(
            imageAsset: favList[index].imageAsset,
            placeName: favList[index].placeName,
          ),
        );
      },
    );
  }
}
