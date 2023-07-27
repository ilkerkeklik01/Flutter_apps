import 'package:flutter/material.dart';

import 'myHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic Project 1",
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.amber,
            shadowColor: Colors.pink.shade300,
            elevation: 8,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
