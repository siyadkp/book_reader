import 'dart:convert';
import 'package:book_reader/controller/api/api_url/api_url.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BookReaderApi extends GetxController {
  List items = [];
  apiCalling() async {
    try {
      Map<String, dynamic> data = {};
      var uri = Uri.parse(getUri);
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        data = jsonDecode(response.body);
        items.addAll(data["items"]);
        print(items);
      }
    } catch (e) {
      print(e);
    }
  }
}
