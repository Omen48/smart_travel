import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
sealed class BottomMenuState with _$BottomMenuState {
  const factory BottomMenuState.initial() = Initial;
}
