import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel/presentation/splash/controller/cubit_controller.dart';
import 'package:smart_travel/presentation/splash/controller/state.dart';
import 'package:smart_travel/presentation/splash/widget/splash.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  Widget _buildBody(BuildContext context) =>
      BlocBuilder<SplashCubit, SplashState>(
        builder:
            (context, state) => state.maybeWhen(
              initial: () => SplashWidget(),
              orElse: () => SplashWidget(),
            ),
      );

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (context) => SplashCubit()..init(),
    child: Scaffold(body: _buildBody(context)),
  );
}
