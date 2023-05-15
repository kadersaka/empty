// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendModel _$TrendModelFromJson(Map<String, dynamic> json) => TrendModel(
      about: json['about'] as String,
      lastPostBy: json['lastPostBy'] as int,
      avatarURL: json['avatarURL'] as String,
      memberCount: json['memberCount'] as int,
      contributorCount: json['contributorCount'] as int,
      trustCount: json['trustCount'] as int,
      member: json['member'] as bool,
      place: json['place'] as String,
      lastPostByName: json['lastPostByName'] as String,
      lastPostByAvatarURL: json['lastPostByAvatarURL'] as String,
      viewCount: json['viewCount'] as int,
      id: json['id'] as int,
      placeName: json['placeName'] as String? ?? '',
      createdBy: json['createdBy'] as int,
      createdByAvatarURL: json['createdByAvatarURL'] as String,
      createdByName: json['createdByName'] as String,
      created: json['created'] as int,
      private: json['private'] as bool? ?? false,
      name: json['name'] as String,
    )..popularity = json['popularity'] as int? ?? 0;

Map<String, dynamic> _$TrendModelToJson(TrendModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created': instance.created,
      'viewCount': instance.viewCount,
      'createdBy': instance.createdBy,
      'createdByName': instance.createdByName,
      'createdByAvatarURL': instance.createdByAvatarURL,
      'avatarURL': instance.avatarURL,
      'lastPostBy': instance.lastPostBy,
      'lastPostByName': instance.lastPostByName,
      'lastPostByAvatarURL': instance.lastPostByAvatarURL,
      'about': instance.about,
      'memberCount': instance.memberCount,
      'contributorCount': instance.contributorCount,
      'trustCount': instance.trustCount,
      'member': instance.member,
      'place': instance.place,
      'popularity': instance.popularity,
      'placeName': instance.placeName,
      'private': instance.private,
    };
