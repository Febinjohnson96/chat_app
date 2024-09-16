import 'package:chat_app/injector.dart';
import 'package:chat_app/presentation/splash/cubit/splash_cubit.dart';
import 'package:chat_app/presentation/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashUi extends StatelessWidget {
  const SplashUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit(sqfliteHelper: injector())..onLoad(),
      child: const SplashScreen(),
    );
  }
}
