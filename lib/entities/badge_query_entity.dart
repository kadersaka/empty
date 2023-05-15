import 'package:json_annotation/json_annotation.dart';

import 'badge_entity.dart';

part 'badge_query_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class BadgeQueryResult {
  UserBadge? badge;

  @JsonKey(ignore: true)
  bool isError;

  BadgeQueryResult({this.badge, this.isError = false});

  factory BadgeQueryResult.fromJson(Map<String, dynamic> json) {
    return _$BadgeQueryResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BadgeQueryResultToJson(this);
}
