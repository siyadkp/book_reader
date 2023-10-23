import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookModelWidget extends StatelessWidget {
  const BookModelWidget({super.key, required this.data});
  final Map data;

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
              child: Image.network(data["imageLinks"]["smallThumbnail"]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 73.w,
                child: Text(
                  data['title'] ?? '',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                data['authors'][0] ?? '',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Text(
                data['publisher'] ?? '',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              const Text(
                'Publisher',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
