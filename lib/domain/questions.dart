class Questoes {
  late String numero;
  late String banca;
  late String enunciado;
  late String a;
  late String b;
  late String c;
  late String d;
  late String e;
  late String respostaCorreta;

  Questoes({
    required this.numero,
    required this.banca,
    required this.enunciado,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e,
    required this.respostaCorreta,
  });

  Questoes.fromJson(Map<String, dynamic> json) {
    numero = json["numero"];
    banca = json["banca"];
    enunciado = json["enunciado"];
    a = json["a"];
    b = json["b"];
    c = json["c"];
    d = json["d"];
    e = json["e"];
    respostaCorreta = json["respostaCorreta"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["numero"] = numero;
    data["banca"] = banca;
    data["enunciado"] = enunciado;
    data["a"] = numero;
    data["b"] = numero;
    data["c"] = numero;
    data["d"] = numero;
    data["e"] = numero;
    data["respostaCorreta"] = numero;
    return data;
  }
}
