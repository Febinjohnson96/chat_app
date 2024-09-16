part of 'home_screen_cubit.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    AuthModel? user,
  }) = _HomeScreenState;
  factory HomeScreenState.initial() {
    return const HomeScreenState();
  }
}
