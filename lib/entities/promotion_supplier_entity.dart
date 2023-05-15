import 'package:json_annotation/json_annotation.dart';

part 'promotion_supplier_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class PromotionSupplier {

  @JsonKey()
  String? id;

  @JsonKey()
  String? name;

  @JsonKey()
  double? lat;

  @JsonKey()
  double? lng;

  @JsonKey()
  String? redirectLink;


  PromotionSupplier({
    this.id,
    this.name,
    this.lat,
    this.lng,
    this.redirectLink,
  });

  factory PromotionSupplier.fromJson(Map<String, dynamic> json) {
    return _$PromotionSupplierFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionSupplierToJson(this);
}
