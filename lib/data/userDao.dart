import 'package:pmob_22/data/dbHelper.dart';
import 'package:pmob_22/domain/user.dart';

import 'package:sqflite/sqflite.dart';

class UserDao {


  listarUsers() async {

    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    String sql = "SELECT * FROM user";
    var result = await database.rawQuery(sql);

    print(result);
  }

  Future<bool> autenticar(String user, String password) async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    String sql = "SELECT * "
                  "FROM user "
                  "WHERE email = ? "
                  "AND senha = ?";

    var result = await database.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

  salvarUser({required User user}) async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    await database.insert('user', user.toJson());
  }

}