
class MathSubjet{

  late String id;
  late String subjectName;

  MathSubjet({
    required this.id,
    required this.subjectName,
  });

    MathSubjet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subjectName = json['mName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['mName'] = subjectName;
    return data;
  }
}
