import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/cupertino.dart';

part 'trend_contributor_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrendContributorModel {
  @JsonKey()
  int id;

  @JsonKey()
  String userName;

  @JsonKey()
  String userAvatar;

  TrendContributorModel({required this.id, required this.userName, required this.userAvatar});

  factory TrendContributorModel.fromJson(Map<String, dynamic> json) => _$TrendContributorModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrendContributorModelToJson(this);

  static List<dynamic> listToJson(List<TrendContributorModel> modelList) => modelList.map((e) => e.toJson()).toList();
}
