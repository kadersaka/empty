class UniversityLevel {
    int id;
    String name;

    UniversityLevel({required this.id,  required this.name});

    factory UniversityLevel.fromJson(Map<String, dynamic> json) {
        return UniversityLevel(
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