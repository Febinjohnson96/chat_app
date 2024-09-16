import 'package:chat_app/managers/sqflite/sqflite_helper.dart';
import 'package:chat_app/utils/logger/app_logger.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initInjector() async {
  AppLogger.debuglog("Yaay");
  injector.registerLazySingleton<SqfliteHelper>(() => SqfliteHelper());
}
