class ListingType {
    int id;
    String name;

    ListingType({this.id=0, required this.name});
    // ConstTag({this.id=0, required this.name});

    factory ListingType.fromJson(Map<String, dynamic> json) {
        return ListingType(
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