part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    AuthModel? user,
  }) = _LoginState;
  factory LoginState.initial() {
    return const LoginState();
  }
}
