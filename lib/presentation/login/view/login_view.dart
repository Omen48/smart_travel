import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_travel/core/resourses/res.dart';
import 'package:smart_travel/core/theme/colors.dart';
import 'package:smart_travel/presentation/login/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/login/controller/state.dart';
import 'package:smart_travel/presentation/login/widget/login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  Widget _buildBody(BuildContext context) =>
      BlocBuilder<LoginCubit, LoginState>(
        builder:
            (context, state) => state.when(
              initial: () => LoginWidget(),
              loading: () => LoginWidget(),
              success: () => LoginWidget(),
            ),
      );

  @override
  Widget build(BuildContext context) => BlocProvider<LoginCubit>(
    create: (context) => LoginCubit()..init(),
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 51,
              width: 51,
              child: SvgPicture.asset(Res.assetsMainLogoBag),
            ),
            _buildBody(context),
            Text(
              'SmartTravel',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.8,
                color: AppColors.blue,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
