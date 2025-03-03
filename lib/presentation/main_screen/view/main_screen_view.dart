import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smart_travel/presentation/main_screen/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/main_screen/controller/state.dart';
import 'package:smart_travel/presentation/main_screen/widget/drawer.dart';
import 'package:smart_travel/presentation/main_screen/widget/main_screen.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  Widget _buildBody(BuildContext context) =>
      BlocBuilder<MainScreenCubit, MainScreenState>(
        builder:
            (context, state) => state.maybeWhen(
              initial: MainScreenWidget.new,
              orElse: MainScreenWidget.new,
            ),
      );

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => MainScreenCubit()..init(),
    child: Scaffold(drawer: const DrawerPlaces(), body: _buildBody(context)),
  );
}
