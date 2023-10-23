import 'dart:convert';

class BookModel {
  String thumbnail;
  String title;
  String authors;
  String publisher;
  String description;
  String categories;

  // Constructor
  BookModel({
    required this.thumbnail,
    required this.title,
    required this.authors,
    required this.publisher,
    required this.description,
    required this.categories,
  });

  // Convert the object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'thumbnail': thumbnail,
      'title': title,
      'authors': authors,
      'publisher': publisher,
      'description': description,
      'categories': categories,
    };
  }

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      thumbnail: json['thumbnail'],
      title: json['title'],
      authors: json['authors'],
      publisher: json['publisher'],
      description: json['description'],
      categories: json['categories'],
    );
  }
}
