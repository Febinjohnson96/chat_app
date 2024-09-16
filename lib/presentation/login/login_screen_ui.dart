import 'package:chat_app/presentation/login/cubit/login_cubit.dart';
import 'package:chat_app/presentation/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenUI extends StatelessWidget {
  const LoginScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
        create: (context) => LoginCubit(), child: const LoginScreen());
  }
}
