import 'package:pmob_22/data/dbHelper.dart';
import 'package:pmob_22/domain/mathSubject_domain.dart';

import 'package:sqflite/sqflite.dart';

class SubjectDao {
  Future<List<MathSubjet>> listaDeSubjects() async {
    DBHelper dbHelper = DBHelper();
    Database database = await dbHelper.initDB();

    String sql = "SELECT * FROM MATHSUBJECT";
    var result = await database.rawQuery(sql);

    List<MathSubjet> lista = <MathSubjet>[];

    for (var json in result) {
      MathSubjet pacote = MathSubjet.fromJson(json);
      lista.add(pacote);
    }
    return lista;
  }
}
