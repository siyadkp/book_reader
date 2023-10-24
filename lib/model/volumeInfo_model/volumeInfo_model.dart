import 'package:json_annotation/json_annotation.dart';
import '../image_model/image_model.dart';
part 'volumeInfo_model.g.dart';

@JsonSerializable()
class VolumeInfo {
  String title;
  List<String> authors;
  String publisher;
  String description;
  List<String> categories;
  ImageLinks imageLinks;
  String language;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.description,
    required this.categories,
    required this.imageLinks,
    required this.language,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);
}
