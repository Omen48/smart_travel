import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_travel/presentation/bottom_menu/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/bottom_menu/controller/state.dart';
import 'package:smart_travel/presentation/bottom_menu/widget/bottom_menu_widget.dart';

class BottomMenuView extends StatelessWidget {
  const BottomMenuView({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  Widget _buildBody(BuildContext context) =>
      BlocBuilder<BottomMenuCubit, BottomMenuState>(
        builder:
            (context, state) => state.when(
              initial: () => BottomMenuWidget(navigationShell: navigationShell),
            ),
      );

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => BottomMenuCubit()..init(),
    child: _buildBody(context),
  );
}
