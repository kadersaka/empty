// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_contributor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendContributorModel _$TrendContributorModelFromJson(
        Map<String, dynamic> json) =>
    TrendContributorModel(
      id: json['id'] as int,
      userName: json['userName'] as String,
      userAvatar: json['userAvatar'] as String,
    );

Map<String, dynamic> _$TrendContributorModelToJson(
        TrendContributorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'userAvatar': instance.userAvatar,
    };
