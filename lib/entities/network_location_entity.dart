import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'network_location_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class NetworkLocationEntity {
  final double lat;
  final double lng;
  String? name;

  NetworkLocationEntity({
    required this.lat,
    required this.lng,
    this.name
  });

  factory NetworkLocationEntity.fromJson(Map<String, dynamic> json) => _$NetworkLocationEntityFromJson(json);
  Map<String, dynamic> toJson() => _$NetworkLocationEntityToJson(this);
}