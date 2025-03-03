import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_travel/core/resourses/res.dart';
import 'package:smart_travel/core/theme/colors.dart';
import 'package:smart_travel/core/widgets/my_textfields.dart';
import 'package:smart_travel/presentation/main_screen/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/main_screen/widget/place_widget.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final List<PlaceData> searchplaces = [
    const PlaceData(imageAsset: 'images/worship2.png', placeName: '2 Башни'),
  ];

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: SvgPicture.asset(Res.arrowBack),
        ),
      ),
      const SearchTextField(),
      const Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 24),
        child: Text(
          'Все, что ты искал за последнее время',
          style: TextStyle(
            color: AppColors.blue,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
      ),
      Flexible(
        child: MasonryGridView.builder(
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: searchplaces.length,
          itemBuilder:
              (context, index) => Center(
                child: Place(
                  imageAsset: searchplaces[index].imageAsset,
                  placeName: searchplaces[index].placeName,
                ),
              ),
        ),
      ),
    ],
  );
}
