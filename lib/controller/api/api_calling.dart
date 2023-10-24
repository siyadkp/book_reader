import 'dart:convert';
import 'package:book_reader/controller/api/api_url/api_url.dart';
import 'package:book_reader/model/book_model/book_model.dart';
import 'package:book_reader/model/item_model/item_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BookReaderApi extends GetxController {
  List<Item>? items;

  //initial api calling function

  Future apiCalling() async {
    try {
      var uri = Uri.parse(getUri);
      var response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        BookModel bookModelItem = BookModel.fromJson(jsonData);
        items = bookModelItem.items;
      }
    } catch (e) {
      print(e);
    }
  }
}
