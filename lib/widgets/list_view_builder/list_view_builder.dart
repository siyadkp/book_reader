import 'package:book_reader/view/book_view/screen_book_view.dart';
import 'package:book_reader/widgets/book_model_widget/book_model_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../model/item_model/item_model.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({
    super.key,
    required this.items,
  });

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Get.to(
          ScreenBookview(item: items[index].volumeInfo),
        ),
        child: BookModelWidget(item: items[index].volumeInfo),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: items.length,
    );
  }
}
