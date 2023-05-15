import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationModel {
  @JsonKey()
  String id;

  @JsonKey()
  String name;

  LocationModel({
    required this.id,
    required this.name,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  static List<dynamic> listToJson(List<LocationModel> modelList) => modelList.map((e) => e.toJson()).toList();
}
