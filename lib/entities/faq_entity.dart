class Faq {
  int id;
  String question;
  String response;

  Faq({this.id = 0, required this.question, required this.response});
  // ConstTag({this.id=0, required this.name});

  factory Faq.fromJson(Map<String, dynamic> json) {
    return Faq(
        id: json['id'], question: json['question'], response: json["response"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = question;
    data["response"] = response;
    return data;
  }
}
