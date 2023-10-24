import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../controller/book_view_notifier/favoriteNotifier.dart';
import '../../model/volumeInfo_model/volumeInfo_model.dart';
import '../../widgets/appbar_widget/appbar_widget.dart';

class ScreenBookview extends StatelessWidget {
  ScreenBookview({super.key, required this.item});
  final VolumeInfo item;
  final bookReaderApi = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBarWidget.appBarWidget(
            'Book view',
            () => bookReaderApi.addToFavorite(item),
            bookReaderApi.isFav(item.title),
          ),
          body: ListView(
            children: [
              SizedBox(
                height: 40.h,
                child: Image.network(
                  item.imageLinks.thumbnail,
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.description,
                  style: const TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
