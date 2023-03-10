// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_temel_widgets/dropdown_button_kullanimi.dart";
import "package:flutter_temel_widgets/my_counter_page.dart";
import "package:flutter_temel_widgets/temel_buton_turleri.dart";

import "image_widgets.dart";
import "popup_menu_kullanimi.dart";

void main() {
  debugPrint("Main Metodu calisti");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp buiild Metodu calisti");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Counter App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
        ),
        outlinedButtonTheme:
            OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buton Turleri"),
          actions: [popupMenuKullanimiState()],
        ),
        body: popupMenuKullanimiState(),
      ),
    );
  }
}
