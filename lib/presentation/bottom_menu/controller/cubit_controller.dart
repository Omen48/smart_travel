import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel/presentation/bottom_menu/controller/state.dart';

class BottomMenuCubit extends Cubit<BottomMenuState> {
  BottomMenuCubit() : super(Initial());

  Future<void> init() async {}
}
