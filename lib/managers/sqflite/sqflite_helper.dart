import 'package:chat_app/domain/model/auth/auth_model.dart';
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
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Create table for AuthModel
    await db.execute('''
    CREATE TABLE auth (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      displayName TEXT,
      phoneNumber TEXT,
      email TEXT,
      password TEXT,
      confirmPassword TEXT,
      isAuthenticated INTEGER
    )
  ''');
  }

  Future<int> insertAuth(AuthModel auth) async {
    final db = await database;
    return await db.insert(
      'auth',
      auth.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<AuthModel>> getAuths() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('auth');

    return List.generate(maps.length, (i) {
      return AuthModel.fromJson(maps[i]);
    });
  }

  Future<int> updateAuth(AuthModel auth) async {
    final db = await database;
    return await db.update(
      'auth',
      auth.toJson(),
      where: 'id = ?',
      whereArgs: [auth.id],
    );
  }
}
