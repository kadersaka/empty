// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_query_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BadgeQueryResult _$BadgeQueryResultFromJson(Map<String, dynamic> json) =>
    BadgeQueryResult(
      badge: json['badge'] == null
          ? null
          : UserBadge.fromJson(json['badge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BadgeQueryResultToJson(BadgeQueryResult instance) =>
    <String, dynamic>{
      'badge': instance.badge?.toJson(),
    };
