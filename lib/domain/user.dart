class User {
  String? email;
  String? senha;
  String? nome;
  String? serie;
  String? cep;
  String? endereco;
  String? cpf;

  User(
      {this.email,
      this.senha,
      this.nome,
      this.serie,
      this.cep,
      this.endereco,
      this.cpf});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    senha = json['senha'];
    nome = json['nome'];
    serie = json['serie'];
    cep = json['cep'];
    endereco = json['endereco'];
    cpf = json['cpf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['senha'] = senha;
    data['nome'] = nome;
    data['serie'] = serie;
    data['cep'] = cep;
    data['endereco'] = endereco;
    data['cpf'] = cpf;

    return data;
  }
}
