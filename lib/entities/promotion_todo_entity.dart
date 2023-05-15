import 'package:json_annotation/json_annotation.dart';

part 'promotion_todo_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class PromotionTODO {

  @JsonKey()
  int? id;

  @JsonKey()
  String? title;

  @JsonKey()
  String? subtitle;

  @JsonKey()
  String? action;

  @JsonKey()
  bool? done;

  PromotionTODO({
    this.id,
    this.title,
    this.subtitle,
    this.done,
  });

  factory PromotionTODO.fromJson(Map<String, dynamic> json) {
    return _$PromotionTODOFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionTODOToJson(this);

  static List<dynamic> getTODOListToJson(List<PromotionTODO> todoList) =>  todoList.map((e) => e.toJson()).toList();
}
