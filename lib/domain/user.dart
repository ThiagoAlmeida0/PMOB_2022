
class User{

  String? email;
  String? senha;

  User({this.email, this.senha});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['senha'] = senha;
    return data;
  }


}