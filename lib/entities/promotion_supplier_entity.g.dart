// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_supplier_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionSupplier _$PromotionSupplierFromJson(Map<String, dynamic> json) =>
    PromotionSupplier(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      redirectLink: json['redirectLink'] as String?,
    );

Map<String, dynamic> _$PromotionSupplierToJson(PromotionSupplier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'redirectLink': instance.redirectLink,
    };
