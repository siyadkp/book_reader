import 'package:book_reader/view/favorite/screen_favorite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/api/api_calling.dart';
import '../../widgets/appbar_widget/appbar_widget.dart';
import '../../widgets/list_view_builder/list_view_builder.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  final bookReaderApi = Get.put(BookReaderApi());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBarWidget(
        'Home',
        () => Get.to(
          ScreenFavorite(),
        ),
      ),
      body: ListViewSeparatedWidget(items: bookReaderApi.items!),
    );
  }
}
