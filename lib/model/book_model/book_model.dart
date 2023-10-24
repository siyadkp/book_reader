import 'package:book_reader/model/item_model/item_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'book_model.g.dart';

@JsonSerializable()
class BookModel {
  List<Item> items;

  BookModel({
    required this.items,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}
