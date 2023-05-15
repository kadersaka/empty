import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/cupertino.dart';

part 'trend_model.g.dart';

/// Trends are now called Circles
@JsonSerializable(explicitToJson: true)
class TrendModel {
  @JsonKey()
  int id;

  @JsonKey()
  String name;

  @JsonKey()
  int created;

  @JsonKey()
  int viewCount;

  @JsonKey()
  int createdBy;

  @JsonKey()
  String createdByName;

  @JsonKey()
  String createdByAvatarURL;

  @JsonKey()
  String avatarURL;

  @JsonKey()
  int lastPostBy;

  @JsonKey()
  String lastPostByName;

  @JsonKey()
  String lastPostByAvatarURL;

  @JsonKey()
  String about;

  @JsonKey()
  int memberCount;

  @JsonKey()
  int contributorCount;

  @JsonKey()
  int trustCount;

  @JsonKey()
  bool member;

  @JsonKey()
  String place;

  @JsonKey(defaultValue: 0)
  int popularity = 0;

  @JsonKey(ignore: true)
  bool selected = false;

  @JsonKey(ignore: true)
  bool isMine = false;

  @JsonKey(defaultValue: "")
  String placeName;

  @JsonKey(defaultValue: false)
  bool private = false;

  TrendModel(
      {required this.about,
      required this.lastPostBy,
      required this.avatarURL,
      required this.memberCount,
      required this.contributorCount,
      required this.trustCount,
      required this.member,
      required this.place,
      required this.lastPostByName,
      required this.lastPostByAvatarURL,
      required this.viewCount,
      required this.id,
      required this.placeName,
      required this.createdBy,
      required this.createdByAvatarURL,
      required this.createdByName,
      required this.created,
      required this.private,
      required this.name});

  factory TrendModel.fromJson(Map<String, dynamic> json) => _$TrendModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrendModelToJson(this);

  static List<dynamic> listToJson(List<TrendModel> modelList) => modelList.map((e) => e.toJson()).toList();
}
