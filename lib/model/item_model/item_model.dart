import 'package:json_annotation/json_annotation.dart';
import '../volumeInfo_model/volumeInfo_model.dart';
part 'item_model.g.dart';

@JsonSerializable()
class Item {
  VolumeInfo volumeInfo;

  Item({
    required this.volumeInfo,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
