import 'package:chat_app/core/config/app_typography.dart';
import 'package:chat_app/core/config/route_name.dart';
import 'package:chat_app/widgets/app_button.dart';
import 'package:chat_app/widgets/app_scaffold.dart';
import 'package:chat_app/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: AppTypography.jakarta22w4700,
          ),
          SizedBox(height: 10.h),
          AppTextField(
              hintText: "E-mail",
              controller: emailController,
              obscureText: false),
          SizedBox(height: 10.h),
          AppTextField(
              hintText: "Password",
              controller: passwordController,
              obscureText: false),
          SizedBox(height: 10.h),
          AppButton(buttonTitle: "Sign in", callback: () {}),
          SizedBox(height: 10.h),
          Center(
              child: TextButton(
                  onPressed: () => context.go(RouteName.registration),
                  child: Text(
                    "Sign Up",
                    style: AppTypography.jakarta14w100
                        .copyWith(color: Colors.blue),
                  ))),
        ],
      ),
    );
  }
}
