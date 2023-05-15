class Tag {
    int id;
    String name;

    Tag({this.id=0, required this.name});
    // ConstTag({this.id=0, required this.name});

    factory Tag.fromJson(Map<String, dynamic> json) {
        return Tag(
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