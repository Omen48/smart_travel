import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_travel/presentation/login/controller/state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(Initial());

  Future<void> init() async {}
}
