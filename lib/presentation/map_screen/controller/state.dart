import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
abstract class MapState with _$MapState {
  const factory MapState.initial() = Initial;
  const factory MapState.loadint() = Loading;
  const factory MapState.success() = Success;
}
