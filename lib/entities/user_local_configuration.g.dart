// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_local_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLocalConfiguration _$UserLocalConfigurationFromJson(
        Map<String, dynamic> json) =>
    UserLocalConfiguration(
      user: json['user'] as int?,
      placeName: json['placeName'] as String?,
      placeId: json['placeId'] as String?,
      universityId: json['universityId'] as int?,
      universityName: json['universityName'] as String?,
      displayName: json['displayName'] as String?,
      hasSeenWelcomeContent: json['hasSeenWelcomeContent'] as bool? ?? false,
      avatarURL: json['avatarURL'] as String?,
      accessToken: json['accessToken'] as String?,
      fcm: json['fcm'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$UserLocalConfigurationToJson(
        UserLocalConfiguration instance) =>
    <String, dynamic>{
      'user': instance.user,
      'placeName': instance.placeName,
      'placeId': instance.placeId,
      'universityName': instance.universityName,
      'universityId': instance.universityId,
      'displayName': instance.displayName,
      'avatarURL': instance.avatarURL,
      'hasSeenWelcomeContent': instance.hasSeenWelcomeContent,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'fcm': instance.fcm,
    };
