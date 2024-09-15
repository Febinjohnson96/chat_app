import 'package:chat_app/managers/sqflite/sqflite_helper.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initInjector() async {
  injector.registerLazySingleton<SqfliteHelper>(() => SqfliteHelper());
}
