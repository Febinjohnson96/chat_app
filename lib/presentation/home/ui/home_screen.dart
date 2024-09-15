import 'package:chat_app/core/config/app_typography.dart';
import 'package:chat_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(
          child: Text(
        "Home Screen",
        style: AppTypography.jakarta17w600,
      )),
    );
  }
}
