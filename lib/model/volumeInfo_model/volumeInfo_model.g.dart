// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volumeInfo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) => VolumeInfo(
      title: json['title'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      publisher: json['publisher'] as String? ?? '',
      description: json['description'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String? ?? '')
          .toList(),
      imageLinks:
          ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: json['language'] as String? ?? '',
    );

Map<String, dynamic> _$VolumeInfoToJson(VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'description': instance.description,
      'categories': instance.categories,
      'imageLinks': instance.imageLinks,
      'language': instance.language,
    };
