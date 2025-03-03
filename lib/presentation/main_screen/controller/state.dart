import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class MainScreenState with _$MainScreenState {
  const factory MainScreenState.initial() = Initial;

  const factory MainScreenState.success() = Success;

  const factory MainScreenState.loading() = Loading;
}
