class Category {
    int id;
    String name;
    String picture;

    Category({required this.id,  required this.name,  required this.picture});

    factory Category.fromJson(Map<String, dynamic> json) {
        return Category(
            id: json['id'], 
            name: json['name'], 
            picture: json['picture'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['picture'] = this.picture;
        return data;
    }
}