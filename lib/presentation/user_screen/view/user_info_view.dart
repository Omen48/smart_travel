import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_travel/core/resourses/res.dart';
import 'package:smart_travel/presentation/user_screen/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/user_screen/controller/state.dart';
import 'package:smart_travel/presentation/user_screen/widget/user_screen.dart';
import 'package:smart_travel/presentation/user_screen/widget/user_settings.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  Widget _buildBody(BuildContext context) =>
      BlocBuilder<UserInfoCubit, UserInfoState>(
        builder:
            (context, state) => state.maybeWhen(
              initial: () => UserInfoWidget(),
              orElse: () => UserInfoWidget(),
            ),
      );

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => UserInfoCubit()..init(),
    child: Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(Res.assetsMainLogoBag, height: 40, width: 40),
        actions: [
          Builder(
            builder:
                (context) => IconButton(
                  icon: SvgPicture.asset(Res.assetsSettings),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
          ),
        ],
      ),
      endDrawer: const SettingsUser(),
      backgroundColor: Colors.white,
      body: _buildBody(context),
    ),
  );
}
