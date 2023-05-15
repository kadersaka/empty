// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as int?,
      created: json['created'] as int?,
      user: json['user'] as int?,
      userAvatarURL: json['userAvatarURL'] as String?,
      userDisplayName: json['userDisplayName'] as String?,
      textContent: json['textContent'] as String?,
      reference: json['reference'] as int?,
      seenBy: (json['seenBy'] as List<dynamic>?)?.map((e) => e as int).toList(),
      isMine: json['isMine'] as bool?,
    )..muted = json['muted'] as bool? ?? false;

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'user': instance.user,
      'userAvatarURL': instance.userAvatarURL,
      'userDisplayName': instance.userDisplayName,
      'textContent': instance.textContent,
      'reference': instance.reference,
      'seenBy': instance.seenBy,
      'isMine': instance.isMine,
      'muted': instance.muted,
    };
