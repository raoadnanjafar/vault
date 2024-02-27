import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AudioDB{

  Future<void> saveNameToDatabase(String name) async {
    final database = await getDatabase();
    await database.insert(
      'names',
      {'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Database> getDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'names.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE names(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)',
        );
      },
    );
  }

  Future<List<String>> fetchNamesFromDatabase() async {
    final database = await getDatabase();
    final List<Map<String, dynamic>> maps = await database.query('names');
    return List.generate(maps.length, (i) {
      return maps[i]['name'] as String;
    });
  }

  Future<void> deleteName(String name) async {
    final database = await getDatabase();
    await database.delete(
      'names',
      where: 'name = ?',
      whereArgs: [name],
    );
  }

}

