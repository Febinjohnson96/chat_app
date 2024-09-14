import 'package:chat_app/core/config/route_name.dart';
import 'package:chat_app/presentation/splash/cubit/splash_cubit.dart';
import 'package:chat_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.routeName != null) {
            context.go(RouteName.registration);
          }
        },
        child: const Center(
          child: Text("splash"),
        ),
      ),
    );
  }
}
