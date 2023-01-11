import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, "banco.db");

    Database db = await openDatabase(
      dbPath,
      version: 2,
      onCreate: onCreate,
    );
    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        "CREATE TABLE user (email varchar(100) PRIMARY KEY, senha varchar(100), nome varchar(100), serie varchar(15), cep varchar(8), endereco varchar(200), cpf varchar(11))";
    await db.execute(sql);

    sql =  'CREATE TABLE MATHSUBJECT (id varchar(10) PRIMARY KEY, mName varchar(100))';
    await db.execute(sql);

    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('11', 'Potenciacão')";
    await db.execute(sql);
    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('12', 'Radiciação')";
    await db.execute(sql);
    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('13', 'MMC e MDC')";
    await db.execute(sql);
    sql = "INSERT INTO MATHSUBJECT (id, mName) VALUES ('14', 'Arranjo')";
    await db.execute(sql);
    sql =
        "INSERT INTO MATHSUBJECT (id, mName) VALUES ('15', 'Produtos notáveis')";
    await db.execute(sql);

    sql =
        "CREATE TABLE Question (numero varchar(100) PRIMARY KEY, banca varchar(100), ano var (4), enunciado varchar (1000), a varchar(15), b varchar(15), c varchar(15), d varchar(15), e varchar(15), respostaCorreta varchar(15))";
    sql =
        "INSERT INTO Question (numero, banca, ano, enunciado, a, b, c, d, e, respostaCorreta) VALUES ('Questão 300', 'FUVEST', '2013', 'O valor de (0,2)3 + (0,16)2 é:', 'a) 0,0264', 'b) 0,0336', 'c) 0,1056', 'd) 0,2568', 'e) 0,6256', 'aa')";
   
  }

  Future<FutureOr<void>> onUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1 && newVersion == 2) {}
  }
}
