import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_travel/core/core.dart';
import 'package:smart_travel/presentation/map_screen/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/map_screen/controller/state.dart';
import 'package:smart_travel/presentation/map_screen/widget/map_screen.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  Widget _buildBody(BuildContext context) => BlocBuilder<MapCubit, MapState>(
    builder:
        (context, state) =>
            state.maybeWhen(initial: MapWidget.new, orElse: MapWidget.new),
  );

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => MapCubit()..init(),
    child: Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 25,
          width: 25,
          child: SvgPicture.asset(Res.assetsMainLogoBag),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(Res.assetsSearch),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(context),
    ),
  );
}
