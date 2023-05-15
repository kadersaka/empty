// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_todo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionTODO _$PromotionTODOFromJson(Map<String, dynamic> json) =>
    PromotionTODO(
      id: json['id'] as int?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      done: json['done'] as bool?,
    )..action = json['action'] as String?;

Map<String, dynamic> _$PromotionTODOToJson(PromotionTODO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'action': instance.action,
      'done': instance.done,
    };
