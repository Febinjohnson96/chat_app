part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    String? routeName,
  }) = _SplashState;
  factory SplashState.initial() {
    return const SplashState(routeName: '');
  }
}
