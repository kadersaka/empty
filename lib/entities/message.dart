import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/cupertino.dart';

part 'message.g.dart';

@JsonSerializable(explicitToJson: true)
class Message {
  @JsonKey()
  int? id;
  @JsonKey()
  int? created;
  @JsonKey()
  int? user;
  @JsonKey()
  String? userAvatarURL;
  @JsonKey()
  String? userDisplayName;
  @JsonKey()
  String? textContent;
  @JsonKey()
  int? reference;
  @JsonKey()
  List<int>? seenBy;
  @JsonKey()
  bool? isMine;

  @JsonKey(defaultValue: false)
  bool? muted;

  @JsonKey(ignore: true)
  bool processing;

  @JsonKey(ignore: true)
  bool isError;

  Message({required this.id,
          required this.created,
          required this.user,
          required this.userAvatarURL,
          required this.userDisplayName,
          required this.textContent,
          required this.reference,
          required this.seenBy,
          required this.isMine,
          this.processing = false,
          this.isError = false});

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}