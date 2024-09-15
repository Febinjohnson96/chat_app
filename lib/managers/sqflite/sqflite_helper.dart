import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteHelper {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'chat_app.db');
    return await openDatabase(
      path,
      version: 1,
    );
  }
}
