
import 'package:pmob_22/data/dbHelper.dart';
import 'package:pmob_22/domain/questions.dart';
import 'package:sqflite/sqflite.dart';

class QuestoesBD{
  Future<List<Questoes>> questao() async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    String sql = "SELECT * FROM Question";
    var result = await database.rawQuery(sql);

    List<Questoes> lista = <Questoes>[];

    for (var json in result) {
      Questoes pacote = Questoes.fromJson(json);
      lista.add(pacote);
    }
    return lista;
  }
  
}
