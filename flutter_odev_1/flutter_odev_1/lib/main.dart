import 'package:flutter/material.dart';

/**
 * Row Column kullanirken Expanded  i aklindan cikarma
 */

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container containerOlustur({required String letter, required Color color}) {
    return Container(
      child: Text(
        letter,
        style: TextStyle(
          fontSize: 33,
          fontWeight: FontWeight.w900,
        ),
      ),
      width: 75,
      height: 75,
      color: color,
      alignment: Alignment.center,
    );
  }

  Row usttekiRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur(letter: "D", color: Colors.amber.shade100),
        containerOlustur(letter: "A", color: Colors.amber.shade300),
        containerOlustur(letter: "R", color: Colors.amber.shade600),
        containerOlustur(letter: "T", color: Colors.amber.shade900),
      ],
    );
  }

  Column alttakiColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: containerOlustur(letter: "E", color: Colors.amber.shade200),
        ),
        Flexible(
          child: containerOlustur(letter: "R", color: Colors.amber.shade300),
        ),
        Flexible(
          child: containerOlustur(letter: "S", color: Colors.amber.shade400),
        ),
        Flexible(
          child: containerOlustur(letter: "L", color: Colors.amber.shade500),
        ),
        Flexible(
          child: containerOlustur(letter: "E", color: Colors.amber.shade600),
        ),
        Flexible(
          child: containerOlustur(letter: "R", color: Colors.amber.shade800),
        ),
        Flexible(
          child: containerOlustur(letter: "I", color: Colors.amber.shade900),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              usttekiRow(),
              Expanded(
                  child:
                      alttakiColumn()), //rowdan kalan butun alana bunun yayilmasi sart
            ],
          ),
        ),
        // ignore: prefer_const_constructors
        appBar: AppBar(title: Text("Flutter Dersleri")),
      ),
    );
  }
}
