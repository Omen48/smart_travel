import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_travel/core/resourses/res.dart';
import 'package:smart_travel/presentation/main_screen/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/main_screen/widget/place_widget.dart';
import 'package:smart_travel/routes/go_router.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  final List<PlaceData> places = [
    const PlaceData(
      imageAsset: 'images/isaac.png',
      placeName: 'Исаакиевский собор',
    ),
    const PlaceData(imageAsset: 'images/sfinks1.jpg', placeName: 'Сфинксы'),
    const PlaceData(
      imageAsset: 'images/shuvalovo.png',
      placeName: 'Деревня Художников',
    ),
    const PlaceData(
      imageAsset: 'images/nimph.png',
      placeName: 'Нимфы, несущие глобус ',
    ),
    const PlaceData(
      imageAsset: 'images/podlodka.png',
      placeName: 'Атомная подлодка К-3',
    ),
    const PlaceData(
      imageAsset: 'images/okhtenka.png',
      placeName: 'Памятник "Охтенка"',
    ),
    const PlaceData(
      imageAsset: 'images/okhtenka.png',
      placeName: 'Памятник "Охтенка"',
    ),
  ];
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppBar(
        leading: Builder(
          builder:
              (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.list),
              ),
        ),
        title: Center(
          child: SizedBox(
            height: 25,
            width: 25,
            child: SvgPicture.asset(Res.assetsMainLogoBag),
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(Res.assetsSearch),
            onPressed: () => context.goNamed(RouterPath.search),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 42.0,
          bottom: 20.0,
        ),
        child: Text(
          'СОВЕТУЕМ ПОСЕТИТЬ В САНКТ-ПЕТЕРБУРГЕ',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.26,
          ),
        ),
      ),
      Flexible(
        child: MasonryGridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: places.length,
          itemBuilder:
              (context, index) => Center(
                child: Place(
                  imageAsset: places[index].imageAsset,
                  placeName: places[index].placeName,
                ),
              ),
        ),
      ),
    ],
  );
}
