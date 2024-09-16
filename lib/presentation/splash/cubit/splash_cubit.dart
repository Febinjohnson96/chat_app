import 'package:bloc/bloc.dart';
import 'package:chat_app/core/config/route_name.dart';
import 'package:chat_app/managers/sqflite/sqflite_helper.dart';
import 'package:chat_app/utils/logger/app_logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({required this.sqfliteHelper}) : super(SplashState.initial());

  final SqfliteHelper sqfliteHelper;

  void onLoad() async {
    final auth = await sqfliteHelper.getAuths();
    await Future.delayed(const Duration(seconds: 2));
    if (auth.isEmpty) {
      emit(state.copyWith(routeName: RouteName.registration));
    } else {
      AppLogger.infolog(auth.first.displayName.toString());
      if (auth.first.isAuthenticated == 1) {
        emit(state.copyWith(routeName: RouteName.home));
      } else {
        emit(state.copyWith(routeName: RouteName.registration));
      }
    }
  }
}
