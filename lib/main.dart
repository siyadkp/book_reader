import 'package:book_reader/controller/api/api_calling.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'view/home/screen_home.dart';
import 'package:sizer/sizer.dart';

void main() async {
  final bookReaderApi = Get.put(BookReaderApi());
  await bookReaderApi.apiCalling();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of this application.
  @override
  Widget build(BuildContext context) {
    return
        // Sizer builder helping to the sizer package
        Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Book Reader',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: ScreenHome(),
        );
      },
    );
  }
}
