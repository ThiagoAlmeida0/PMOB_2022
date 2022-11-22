
class User{

  String? email;
  String? senha;
  String? nome;
  String? serie;

  User({this.email, this.senha, this.nome, this.serie});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    senha = json['senha'];
    nome = json['nome'];
    serie = json['serie'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['senha'] = senha;
    data['nome'] = nome;
    data['serie'] = serie;

    return data;
  }


}