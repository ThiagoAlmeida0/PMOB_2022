
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, "banco.db");

    Database db = await openDatabase(dbPath,
      version: 1,
      onCreate: onCreate,
    );
    print(dbPath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async { // Aqui inserir as partes de questões e conteúdo
 
    String sql = 'CREATE TABLE PACOTE (id INTEGER PRIMARY KEY, head varchar(100), url_image varchar(100), city varchar(100), title varchar(100), transport varchar(100), validity varchar(100), old_price double, current_price double, nights integer, discount double, persons integer, free_cancellation boolean);';
    await db.execute(sql);
    
    sql =
    "INSERT INTO PACOTE (id, head, url_image, city, title, transport, validity, old_price, current_price, nights, discount, persons, free_cancellation) VALUES (1, 'Pacote Amsterdam', 'https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-amsterda-capa2019-03.jpg', 'Amsterdam, NLD', 'Pacote Amsterdam - 2022 e 2023', 'Aéreo + Hospedagem', '01 Jan 2022 a 31 Dez 2023', '5.486', '4.389', 8, 20, 2, 1);";
    await db.execute(sql);

    sql =
    "INSERT INTO PACOTE (id, head, url_image, city, title, transport, validity, old_price, current_price, nights, discount, persons, free_cancellation) VALUES (2, 'Pacote Cancún', 'https://blogmaladeviagem.com.br/wp-content/uploads/2016/11/Blog-Mala-de-Viagem-cancun.jpg', 'CANCÚN, MEX', 'Pacote Cancún 2021', 'Aéreo + Transfer Grátis', '01 Nov 2021 a 31 Dez 2021', '6.500', '3.854', 5, 30, 1, 1);";
    await db.execute(sql);

    sql = "CREATE TABLE user (email varchar(100) PRIMARY KEY, senha varchar(100), nome varchar(100), serie varchar(15))";
      await db.execute(sql);

    sql = "INSERT INTO user (email, senha, nome, serie) VALUES ('joao@gmail.com', '123456', 'Joaozinho', '3')";
    await db.execute(sql);

  }

  Future<FutureOr<void>> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1 && newVersion == 2){
      
    }

  }
}