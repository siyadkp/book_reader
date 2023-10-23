import 'package:book_reader/controller/api/api_calling.dart';
import 'package:book_reader/view/book_view/screen_book_view.dart';
import 'package:book_reader/widgets/book_model_widget/book_model_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({
    super.key,
    required this.data,
  });

  final BookReaderApi data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Get.to(
          ScreenBookview(
            data: data.items[index]['volumeInfo'],
          ),
        ),
        child: BookModelWidget(data: data.items[index]['volumeInfo']),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 10,
    );
  }
}
