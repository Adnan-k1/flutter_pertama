import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance; 
  DBHelper._internal();

  static Database? _db;
  static const _tableName = 'contacts'; 
  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'contacts.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE $_tableName(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)',
        );
      },
    );
  }

  
  Future<int> insertName(String name) async {
    final client = await db;
    return client.insert(_tableName, {'name': name});
  }

  
  Future<List<Map<String, dynamic>>> getNames() async {
    final client = await db;
    return client.query(_tableName, orderBy: 'id DESC');
  }

  
  Future<int> deleteById(int id) async {
    final client = await db;
    return client.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  
  Future<int> updateName (int id, String newName) async{
    final client = await db;
    return client.update(
      _tableName, 
      {'name': newName},
      where: 'id = ?', 
      whereArgs: [id]
    );
  }
}