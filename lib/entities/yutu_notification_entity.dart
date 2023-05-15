import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
part 'yutu_notification_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class YuTuNotification {
  int? id;
  String? place;
  String? placeName;
  int? user;
  int? created;
  int? updated;
  String? type;
  String? subtitle;
  String? avatar;
  String? title;
  bool? read;
  int? reference;

  YuTuNotification(this.id, this.place, this.placeName, this.user, this.created, this.updated, this.type, this.subtitle, this.avatar, this.title, this.read, this.reference);

  factory YuTuNotification.fromJson(Map<String, dynamic> json) => _$YuTuNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$YuTuNotificationToJson(this);

  NotificationType parseType() {
    try {
      return NotificationType.values.firstWhere((element) => element.toString() == "NotificationType." + this.type!);
    } catch (ex) {}
    return NotificationType.SILENT;
  }
}

enum NotificationType { PROFILE_VIEW, POST_LIKE, POST_COMMENT, NEW_POST_IN_LOCATION, NEW_LISTING_IN_LOCATION, NEW_PRIVATE_MESSAGE, WELCOME_SYSTEM, SILENT, PROMO_PAGE, NEW_TREND }

// extension NotificationTypeExtension on NotificationType {
//   String get inString => describeEnum(this);
// }
