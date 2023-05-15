import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  @JsonKey()
  String? name;

  @JsonKey()
  int? id;

  @JsonKey()
  String? avatarPicture;

  @JsonKey()
  bool? isMe;

  @JsonKey(defaultValue: "")
  String? aboutMe;

  User({
    this.id,
    this.name,
    this.avatarPicture,
    this.isMe,
    this.aboutMe
  });

  factory User.fromSnapshot(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
