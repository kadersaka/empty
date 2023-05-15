import 'package:json_annotation/json_annotation.dart';

part 'badge_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class UserBadge {
  int id = 0;
  int newMessages = 0;
  int newNotifications = 0;
  int newPromotions = 0;
  int newListings = 0;

  UserBadge(this.id, this.newMessages, this.newNotifications, this.newPromotions, this.newListings);

  factory UserBadge.fromJson(Map<String, dynamic> json) {
    return _$UserBadgeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserBadgeToJson(this);
}
