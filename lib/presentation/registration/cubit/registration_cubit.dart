import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/model/auth/auth_model.dart';
import 'package:chat_app/managers/sqflite/sqflite_helper.dart';
import 'package:chat_app/utils/logger/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.dart';
part 'registration_cubit.freezed.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit({required this.sqfliteService})
      : super(RegistrationState.initial());

  final SqfliteHelper sqfliteService;

  void onSignUp(AuthModel user) {
    AppLogger.debuglog(user.displayName.toString());
    if (user.password != user.confirmPassword) {
      AppLogger.errorlog('Password does not match');
    } else {
      user.isAuthenticated = 1;
      emit(RegistrationState(user: user));
      sqfliteService.insertAuth(state.user ?? AuthModel());
    }
  }
}
