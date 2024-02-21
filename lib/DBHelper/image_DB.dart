import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../Models/image_model.dart';

class ImageDB{
  Future<void> saveImagesToDatabase(List<XFile> images) async {
    final database = await _getDatabase();
    Batch batch = database.batch();
    for (XFile image in images) {
      batch.insert(
        'images',
        {'image_path': image.path},
      );
    }
    await batch.commit(noResult: true);
  }

  Future<List<ImageModel>> fetchImagesFromDatabase() async {
    final database = await _getDatabase();
    final List<Map<String, dynamic>> maps = await database.query('images');
    return List.generate(maps.length, (i) {
      return ImageModel(
        id: maps[i]['id'] as int,
        imagePath: maps[i]['image_path'] as String,
      );
    });
  }

  Future<Database> _getDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'images.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE images(id INTEGER PRIMARY KEY AUTOINCREMENT, image_path TEXT)',
        );
      },
    );
  }
}