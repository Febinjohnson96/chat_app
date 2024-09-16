import 'package:chat_app/core/config/route_name.dart';
import 'package:chat_app/presentation/home/home_screen_ui.dart';
import 'package:chat_app/presentation/login/login_screen_ui.dart';
import 'package:chat_app/presentation/registration/registration_ui.dart';
import 'package:chat_app/presentation/splash/splash_ui.dart';
import 'package:go_router/go_router.dart';

final GoRouter approute = GoRouter(routes: [
  GoRoute(
      path: RouteName.home, builder: (context, state) => const HomeScreenUI()),
  GoRoute(
      path: RouteName.login,
      builder: (context, state) => const LoginScreenUI()),
  GoRoute(
      path: RouteName.registration,
      builder: (context, state) => const RegistrationUI()),
  GoRoute(
      path: RouteName.splash, builder: (context, state) => const SplashUi()),
]);
