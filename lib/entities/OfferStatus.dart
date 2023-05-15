class OfferStatus {
    int id;
    String name;

    OfferStatus({required this.id,  required this.name});

    factory OfferStatus.fromJson(Map<String, dynamic> json) {
        return OfferStatus(
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