// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversation _$ConversationFromJson(Map<String, dynamic> json) => Conversation(
      id: json['id'] as int?,
      user: json['user'] as int?,
      title: json['title'] as String?,
      reference: json['reference'] as int?,
      avatar: json['avatar'] as String?,
      read: json['read'] as bool?,
      subtitle: json['subtitle'] as String?,
    );

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'read': instance.read,
      'avatar': instance.avatar,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'reference': instance.reference,
    };
