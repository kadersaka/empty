// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_location_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkLocationEntity _$NetworkLocationEntityFromJson(
        Map<String, dynamic> json) =>
    NetworkLocationEntity(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$NetworkLocationEntityToJson(
        NetworkLocationEntity instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'name': instance.name,
    };
