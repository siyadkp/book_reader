import 'package:flutter/material.dart';

class AppBarWidget {
  //Custom Appbar Widget and on pressed function is callback function
  static appBarWidget(String title, Function() onpressed,
          [bool isFav = false]) =>
      AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: onpressed,
            icon: Icon(
              // isFav variable change icons
              isFav ? Icons.favorite : Icons.favorite_outline,
            ),
          ),
        ],
      );
}
