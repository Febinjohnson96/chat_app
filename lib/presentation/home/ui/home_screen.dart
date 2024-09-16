import 'package:chat_app/core/config/app_typography.dart';
import 'package:chat_app/core/config/route_name.dart';
import 'package:chat_app/presentation/home/cubit/home_screen_cubit.dart';
import 'package:chat_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
        builder: (context, state) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                height: 50.h,
                width: 500.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      state.user?.displayName ?? "",
                      style: AppTypography.jakarta17w600
                          .copyWith(color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {
                          context.read<HomeScreenCubit>().onPressedLogout();
                          context.go(RouteName.registration);
                        },
                        icon: const Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                        ))
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
