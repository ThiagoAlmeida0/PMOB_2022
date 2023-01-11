import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CpfApi {
  validarCPF(String cpf) async {
    Uri url = Uri.https(
        "cadastral-situation-of-the-brazilian-cpf-numbers.p.rapidapi.com", "/");
    Response response =
        await http.post(url, body: "cpfNumber=$cpf", headers: <String, String>{
      'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
      'X-Rapidapi-Key': 'e87aef232fmshc9182b9703b3c85p1c26bbjsn353c6676334d',
    });

    var json = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw Exception('Failed to load CPF');
    }

    return json;
  }
}
