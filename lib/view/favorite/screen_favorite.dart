import 'dart:ffi';
import 'package:book_reader/controller/book_view_notifier/favoriteNotifier.dart';
import 'package:book_reader/widgets/book_model_widget/book_model_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/api/api_calling.dart';
import '../../widgets/list_view_builder/list_view_builder.dart';

class ScreenFavorite extends StatelessWidget {
  ScreenFavorite({super.key});
  final favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    final Map data = favoriteController.favoriteData;
    List keysOfFavoriteData=favoriteController.keysOfFavoriteData;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorite'),
        ),
        body: data.isEmpty
            ? const Center(
                child: Text(
                'No Favorites',
                style: TextStyle(fontSize: 15),
              ))
            : ListView.separated(
                itemBuilder: (context, index) =>
                    BookModelWidget(data: data[keysOfFavoriteData[index]]),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: data.length));
  }
}
