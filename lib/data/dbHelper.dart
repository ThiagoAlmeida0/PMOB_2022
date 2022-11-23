import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, "banco.db");

    Database db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );
    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    
    String sql =
      "CREATE TABLE user (email varchar(100) PRIMARY KEY, senha varchar(100), nome varchar(100), serie varchar(15))";
    await db.execute(sql);

    sql =
        'CREATE TABLE MATHSUBJECT (id varchar(10) PRIMARY KEY, mName varchar(100))';
    await db.execute(sql);

    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('11', 'Potenciacão')";
    await db.execute(sql);
    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('12', 'Radiciação')";
    await db.execute(sql);
    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('13', 'MMC e MDC')";
    await db.execute(sql);
    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('14', 'Arranjo')";
    await db.execute(sql);
    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('15', 'Produtos notáveis')";
    await db.execute(sql);
  }

  Future<FutureOr<void>> onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {}
  }
}
