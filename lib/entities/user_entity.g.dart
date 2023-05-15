// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      avatarPicture: json['avatarPicture'] as String?,
      isMe: json['isMe'] as bool?,
      aboutMe: json['aboutMe'] as String? ?? '',
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'avatarPicture': instance.avatarPicture,
      'isMe': instance.isMe,
      'aboutMe': instance.aboutMe,
    };
