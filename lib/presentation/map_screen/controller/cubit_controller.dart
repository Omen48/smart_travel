import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel/presentation/map_screen/controller/state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(Initial());

  Future<void> init() async {}
}
