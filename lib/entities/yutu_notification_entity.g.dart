// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yutu_notification_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YuTuNotification _$YuTuNotificationFromJson(Map<String, dynamic> json) =>
    YuTuNotification(
      json['id'] as int?,
      json['place'] as String?,
      json['placeName'] as String?,
      json['user'] as int?,
      json['created'] as int?,
      json['updated'] as int?,
      json['type'] as String?,
      json['subtitle'] as String?,
      json['avatar'] as String?,
      json['title'] as String?,
      json['read'] as bool?,
      json['reference'] as int?,
    );

Map<String, dynamic> _$YuTuNotificationToJson(YuTuNotification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'placeName': instance.placeName,
      'user': instance.user,
      'created': instance.created,
      'updated': instance.updated,
      'type': instance.type,
      'subtitle': instance.subtitle,
      'avatar': instance.avatar,
      'title': instance.title,
      'read': instance.read,
      'reference': instance.reference,
    };
