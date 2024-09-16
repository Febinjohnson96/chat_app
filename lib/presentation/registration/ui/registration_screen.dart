import 'package:chat_app/core/config/app_typography.dart';
import 'package:chat_app/core/config/route_name.dart';
import 'package:chat_app/domain/model/auth/auth_model.dart';
import 'package:chat_app/presentation/registration/cubit/registration_cubit.dart';
import 'package:chat_app/widgets/app_button.dart';
import 'package:chat_app/widgets/app_scaffold.dart';
import 'package:chat_app/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final displayNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: BlocListener<RegistrationCubit, RegistrationState>(
        listener: (context, state) {
          if (state.user != null) {
            context.go(RouteName.home);
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign up",
              style: AppTypography.jakarta22w4700,
            ),
            SizedBox(height: 10.h),
            AppTextField(
              controller: displayNameController,
              hintText: "Display Name",
              obscureText: false,
            ),
            SizedBox(height: 10.h),
            AppTextField(
              controller: emailController,
              hintText: "E-mail",
              obscureText: false,
            ),
            SizedBox(height: 10.h),
            AppTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: false,
            ),
            SizedBox(height: 10.h),
            AppTextField(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obscureText: false,
            ),
            SizedBox(height: 10.h),
            IntlPhoneField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintStyle: AppTypography.jakarta14w100,
                  counterText: '',
                  hintText: "Phone Number ", // Hint text
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                )),
            SizedBox(
              height: 10.h,
            ),
            AppButton(
              buttonTitle: "Sign Up",
              callback: () {
                final auth = AuthModel(
                  displayName: displayNameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                  phoneNumber: phoneController.text,
                  confirmPassword: confirmPasswordController.text,
                );
                context.read<RegistrationCubit>().onSignUp(auth);
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: TextButton(
                    onPressed: () => context.go(RouteName.login),
                    child: Text(
                      "Sign In",
                      style: AppTypography.jakarta14w100
                          .copyWith(color: Colors.blue),
                    )))
          ],
        ),
      ),
    );
  }
}
