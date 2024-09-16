import 'package:chat_app/injector.dart';
import 'package:chat_app/presentation/home/cubit/home_screen_cubit.dart';
import 'package:chat_app/presentation/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenUI extends StatelessWidget {
  const HomeScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
        create: (context) => HomeScreenCubit(sqfliteHelper: injector())..onLoad(),
        child: const HomeScreen());
  }
}
