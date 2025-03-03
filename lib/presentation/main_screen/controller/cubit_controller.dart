import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel/presentation/main_screen/controller/state.dart';

class PlaceData {
  final String imageAsset;
  final String placeName;

  const PlaceData({required this.imageAsset, required this.placeName});
}

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit() : super(Initial());

  Future<void> init() async {}
}
