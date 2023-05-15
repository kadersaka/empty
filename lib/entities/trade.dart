class Trade {
    int id;
    String name;

    Trade({required this.id,  required this.name});

    factory Trade.fromJson(Map<String, dynamic> json) {
        return Trade(
            id: json['id'], 
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        return data;
    }
}