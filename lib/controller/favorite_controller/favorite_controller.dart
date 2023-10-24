import 'dart:convert';
import 'package:book_reader/model/volumeInfo_model/volumeInfo_model.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteController extends GetxController {
  final key = 'favorite_datas';
  Map<String, dynamic> favoriteData = {};
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

  Future addToFavorite(VolumeInfo item) async {
    favoriteData.putIfAbsent(item.title, () => item);
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
      favoriteData = Map<String, dynamic>.from(mapData);
      print(favoriteData);
    } else {
      return {}; // Return an empty map or handle the case where the data is not found
    }
    keysOfFavoriteData.addAll(favoriteData.keys);
    print(favoriteData[keysOfFavoriteData[0]]['title']);
    update();
  }
}
