// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBadge _$UserBadgeFromJson(Map<String, dynamic> json) => UserBadge(
      json['id'] as int,
      json['newMessages'] as int,
      json['newNotifications'] as int,
      json['newPromotions'] as int,
      json['newListings'] as int,
    );

Map<String, dynamic> _$UserBadgeToJson(UserBadge instance) => <String, dynamic>{
      'id': instance.id,
      'newMessages': instance.newMessages,
      'newNotifications': instance.newNotifications,
      'newPromotions': instance.newPromotions,
      'newListings': instance.newListings,
    };
