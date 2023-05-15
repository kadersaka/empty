import 'package:json_annotation/json_annotation.dart';

part 'conversation_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class Conversation {

  @JsonKey()
  int? id;

  @JsonKey()
  int? user;

  @JsonKey()
  bool? read;

  @JsonKey()
  String? avatar;

  @JsonKey()
  String? title;

  @JsonKey()
  String? subtitle;

  @JsonKey()
  int? reference;

  Conversation({
    this.id,
    this.user,
    this.title,
    this.reference,
    this.avatar,
    this.read,
    this.subtitle
  });

  factory Conversation.fromJson(Map<String, dynamic> json) {
    return _$ConversationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConversationToJson(this);
}
