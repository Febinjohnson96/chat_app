part of 'registration_cubit.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    AuthModel? user,
  }) =_RegistrationState;
factory  RegistrationState.initial() = _Initial;
}
