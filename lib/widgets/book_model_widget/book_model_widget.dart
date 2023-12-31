import 'package:book_reader/model/volumeInfo_model/volumeInfo_model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookModelWidget extends StatelessWidget {
  const BookModelWidget({super.key, required this.item});
  final VolumeInfo item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 15.h,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 10.h,
              color: Colors.grey,
              child: Image.network(item.imageLinks.smallThumbnail),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 73.w,
                child: Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                item.authors.first,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                item.publisher,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                item.categories.first,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
