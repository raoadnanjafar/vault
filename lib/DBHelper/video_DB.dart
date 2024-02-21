

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../Models/video_model.dart';

class VideoDB{

  Future<void> saveVideosToDatabase(List<XFile> videos) async {
    final database = await _getDatabase();
    Batch batch = database.batch();
    for (XFile video in videos) {
      batch.insert(
        'videos',
        {'video_path': video.path},
      );
    }
    await batch.commit(noResult: true);
  }

  Future<Database> _getDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = join(directory.path, 'videos.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE videos(id INTEGER PRIMARY KEY AUTOINCREMENT, video_path TEXT)',
        );
      },
    );
  }

  Future<List<VideoModel>> fetchVideosFromDatabase() async {
    final database = await _getDatabase();
    final List<Map<String, dynamic>> maps = await database.query('videos');
    return List.generate(maps.length, (i) {
      return VideoModel(
        id: maps[i]['id'] as int,
        videoPath: maps[i]['video_path'] as String,
      );
    });
  }

}
