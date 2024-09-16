import 'package:chat_app/injector.dart';
import 'package:chat_app/presentation/registration/cubit/registration_cubit.dart';
import 'package:chat_app/presentation/registration/ui/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationUI extends StatelessWidget {
  const RegistrationUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationCubit>(
        create: (context) => RegistrationCubit(sqfliteService: injector()),
        child: const RegistrationScreen());
  }
}
