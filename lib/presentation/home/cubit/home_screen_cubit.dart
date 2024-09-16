import 'package:bloc/bloc.dart';
import 'package:chat_app/domain/model/auth/auth_model.dart';
import 'package:chat_app/managers/sqflite/sqflite_helper.dart';
import 'package:chat_app/utils/logger/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.dart';
part 'home_screen_cubit.freezed.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit({required this.sqfliteHelper})
      : super(HomeScreenState.initial());

  final SqfliteHelper sqfliteHelper;

  void onLoad() async {
    final auth = await sqfliteHelper.getAuths();
    AppLogger.warninglog(auth.first.id.toString());
    emit(state.copyWith(user: auth.first));
  }

  void onPressedLogout()async{
    final auth = await sqfliteHelper.getAuths();
    auth.first.isAuthenticated = 0;
    await sqfliteHelper.updateAuth(auth.first);
    emit(state.copyWith(user: auth.first));
  }
}
