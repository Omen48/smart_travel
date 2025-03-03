import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smart_travel/presentation/splash/controller/state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(Initial());

  Future<void> init() async {}
}
