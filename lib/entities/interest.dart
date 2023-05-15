class Interest {
    int id;
    String name;

    Interest({required this.id,  required this.name});

    factory Interest.fromJson(Map<String, dynamic> json) {
        return Interest(
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