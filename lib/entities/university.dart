import 'location_model.dart';

class University {
    String name;
    // String? placeName;
    // String? placeId;
    String domainName;
    int id;
    int numberOfNomination;
    LocationModel location;
    String website;
    bool approved;

    // University({required this.name,  this.placeName,  this.placeId, required this.website, required this.domainName, required this.id, required this.location, this.numberOfNomination=0,  this.isActive = true,  this.locationModel = LocationModel(id: '0', name: "Default Place")});
    University({required this.name,  required this.website, required this.domainName, required this.id, this.numberOfNomination=0,  this.approved = true,  required this.location});

    factory University.fromJson(Map<String, dynamic> json) {
        return University(
            name: json['name'] ?? "NA",
            numberOfNomination: json['numberOfNomination'] ?? 0,
            approved: json['approved'] ?? true,
            domainName: json['domainName'] ?? "NA",
            website: json['website'] ?? "NA",
            id: json['id'],
            location: json['location'] == null ? LocationModel(id: 'ChIJrx_ErYAzcUgRAnRUy6jbIMg', name: "Default Place") : LocationModel.fromJson(json['location']),
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['name'] = name;
        data['domainName'] = domainName;
        data['website'] = website;
        data['isActive'] = approved;
        data['numberOfNomination'] = numberOfNomination;
        data['id'] = id;
        data['location'] = location;
        return data;
    }

    @override
    bool operator ==(Object other) =>  identical(this, other) || other is University && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}