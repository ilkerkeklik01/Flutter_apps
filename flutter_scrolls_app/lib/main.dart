import 'package:flutter/material.dart';
import 'package:flutter_scrolls_app/card_list_tile.dart';

import 'listview_kullanimi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: ListViewKullanimi(),
    );
  }
}
