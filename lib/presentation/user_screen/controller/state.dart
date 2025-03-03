import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
abstract class UserInfoState with _$UserInfoState {
  const factory UserInfoState.initial() = Initial;
  const factory UserInfoState.loadint() = Loading;
  const factory UserInfoState.success() = Success;
}
