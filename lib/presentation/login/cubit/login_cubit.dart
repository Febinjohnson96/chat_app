import 'package:bloc/bloc.dart';
import 'package:chat_app/core/config/route_name.dart';
import 'package:chat_app/domain/model/auth/auth_model.dart';
import 'package:chat_app/managers/sqflite/sqflite_helper.dart';
import 'package:chat_app/utils/logger/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.sqfliteHelper,
  }) : super(LoginState.initial());

  final SqfliteHelper sqfliteHelper;

  void onLoad() async {
    final auth = await sqfliteHelper.getAuths();
    emit(state.copyWith(user: auth.first));
  }

  void onPressedLogin({String? email, String? password}) {
    AppLogger.debuglog("Clciks");
    final auth = state.user;
    if (auth != null) {
      if (auth.email == email && auth.password == password) {
        AppLogger.debuglog('Login Successful');
        auth.isAuthenticated = 1;
        sqfliteHelper.updateAuth(auth);
        emit(state.copyWith(user: auth, routeName: RouteName.home));
      } else {
        AppLogger.debuglog('Login Failed');
      }
    }else{
      AppLogger.errorlog("No user found");
    }
  }
}
