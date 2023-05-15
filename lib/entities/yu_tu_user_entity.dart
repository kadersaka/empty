import 'package:json_annotation/json_annotation.dart';
part 'yu_tu_user_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class YuTuUser {
  String? id;
  String? displayName;
  String? email;
  @JsonKey(defaultValue: "")
  String? avatarPictureURL;

  YuTuUser(this.id, this.displayName, this.email);

  factory YuTuUser.fromJson(Map<String, dynamic> json) =>
      _$YuTuUserFromJson(json);
  Map<String, dynamic> toJson() => _$YuTuUserToJson(this);
}
