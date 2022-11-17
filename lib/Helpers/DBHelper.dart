import 'package:final_project/Helpers/model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DbHelper {
  static Database? _db;

  static const String DB_Name = 'final.db';
  static const String Table_User = 'kategorii';
  static const int Version = 4;

  static const String C_UserID = 'id';
  static const String C_Kategori = 'kategori';
  static const String C_Img = 'img';

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute('''CREATE TABLE $Table_User (
        $C_Kategori TEXT,
        $C_Img TEXT
      )'''
    );
  }

  Future<KategoriModel?> getData() async {
    var dbClient = await db;
    var res = await dbClient!.rawQuery("SELECT * FROM $Table_User");

    if (res.length > 0) {
      return KategoriModel.fromMap(res.first);
    }

    return null;
  }
}
