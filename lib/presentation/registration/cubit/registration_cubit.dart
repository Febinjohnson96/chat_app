import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/model/auth/auth_model.dart';
import 'package:chat_app/utils/logger/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.dart';
part 'registration_cubit.freezed.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationState.initial());

  void onSignUp(AuthModel user) {
    AppLogger.debuglog(user.displayName.toString());
    emit(RegistrationState(user: user));
  }
}
