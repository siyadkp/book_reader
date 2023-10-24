import 'package:book_reader/controller/book_view_notifier/favoriteNotifier.dart';
import 'package:book_reader/widgets/favorite_book_model_widget.dart/favorite_book_model_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFavorite extends StatelessWidget {
  ScreenFavorite({super.key});
  final favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> favoriteDatas = favoriteController.favoriteData;
    List keysOfFavoriteData = favoriteController.keysOfFavoriteData;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite'),
        ),
        body: favoriteDatas.isEmpty
            ? const Center(
                child: Text(
                  'No Favorites',
                  style: TextStyle(fontSize: 15),
                ),
              )
            : ListView.separated(
                itemBuilder: (context, index) => FavotiteBookModelWidget(
                    item: favoriteDatas[keysOfFavoriteData[index]]),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: favoriteDatas.length));
  }
}
