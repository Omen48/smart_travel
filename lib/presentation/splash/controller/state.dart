import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = Initial;
  const factory SplashState.loadint() = Loading;
  const factory SplashState.success() = Success;
}
