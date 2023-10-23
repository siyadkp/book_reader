import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../controller/book_view_notifier/favoriteNotifier.dart';
import '../../widgets/appbar_widget/appbar_widget.dart';

class ScreenBookview extends StatelessWidget {
  ScreenBookview({super.key, required this.data});
  final Map data;
  final bookReaderApi = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(builder: (_) {
      return Scaffold(
        appBar: AppBarWidget.appBarWidget(
          'Book view',
          () => bookReaderApi.addToFavorite(data),
          bookReaderApi.isFav(data['title'] ?? ''),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 40.h,
              child: Image.network(
                data["imageLinks"]["thumbnail"],
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Text(
                data['title'] ?? '',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data['description'] ?? '',
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      );
    });
  }
}
