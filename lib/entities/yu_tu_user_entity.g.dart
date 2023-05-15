// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yu_tu_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YuTuUser _$YuTuUserFromJson(Map<String, dynamic> json) => YuTuUser(
      json['id'] as String?,
      json['displayName'] as String?,
      json['email'] as String?,
    )..avatarPictureURL = json['avatarPictureURL'] as String? ?? '';

Map<String, dynamic> _$YuTuUserToJson(YuTuUser instance) => <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'email': instance.email,
      'avatarPictureURL': instance.avatarPictureURL,
    };
