import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel/presentation/user_screen/controller/state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(Initial());

  Future<void> init() async {}
}
