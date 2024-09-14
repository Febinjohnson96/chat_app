import 'package:bloc/bloc.dart';
import 'package:chat_app/core/config/route_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.initial());

  void onLoad() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(routeName: RouteName.registration));
  }
}
