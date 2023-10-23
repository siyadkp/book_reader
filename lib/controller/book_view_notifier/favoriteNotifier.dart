import 'dart:convert';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteController extends GetxController {
  final key = 'favorite_data';
  Map<String, Map> favoriteData = {};
  List keysOfFavoriteData = [];

//This function finding favorite books

  bool isFav(String title) {
    if (favoriteData.containsKey(title)) {
      return true;
    } else {
      return false;
    }
  }

// This function add datas to local storage with help of SharedPreferences

  Future addToFavorite(Map data) async {
    favoriteData.putIfAbsent(data['title'], () => data);
    final jsonModel = json.encode(favoriteData);
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, jsonModel);
    getMapFromLocalStorage();
  }

// Datas fetching from local storage

  Future getMapFromLocalStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonData = prefs.getString(key);

    if (jsonData != null) {
      final mapData = json.decode(jsonData);
      favoriteData.clear();
      keysOfFavoriteData.clear();
      favoriteData = Map<String, Map>.from(mapData);
      print(favoriteData);
    } else {
      return {}; // Return an empty map or handle the case where the data is not found
    }
    keysOfFavoriteData.addAll(favoriteData.keys);
    update();
  }
}
