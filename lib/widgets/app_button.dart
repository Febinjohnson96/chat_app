import 'package:chat_app/core/config/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.buttonTitle, this.callback});
  final String buttonTitle;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback?.call(),
      child: Container(
        height: 60.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            buttonTitle,
            style: AppTypography.jakarta17w600.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
