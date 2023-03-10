// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        // ignore: deprecated_member_use
        accentColor: Colors.purple,
      ),
      home: Scaffold(
        body: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: TasanContainerlarChildrenListesi,
          ),
        ),
        //
        appBar: AppBar(title: Text("Header")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tiklandi");
          },
          backgroundColor: Colors.red,
          // ignore: prefer_const_constructors
          child: Icon(
            Icons.accessibility_new_sharp,
            color: Colors.blue,
            size: 40,
          ),
        ),
      ),
    );
  }
}

Widget containerDersleri() {
  String _img1 =
      "https://media.istockphoto.com/id/824121584/photo/audi-r8.jpg?s=612x612&w=0&k=20&c=mRDZjT5OboBkqp4GH7KPvkCA02dfDgZxAlyz4ozGcf8=";
  String _img2 =
      "https://lh3.googleusercontent.com/ogw/AAEL6shCDF81PnqGb-yzoO9eF9trEhEqulZHx5-FwyaDWg=s32-c-mo";

  return Center(
    child: Container(
      padding: EdgeInsets.all(20),
      child: Text("ILKER",
          style: TextStyle(
              fontSize: 128, color: Color.fromARGB(255, 122, 119, 119))),
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.pink,
          width: 10,
        ),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
        image: DecorationImage(
          image: NetworkImage(_img2),
          fit: BoxFit.scaleDown,
          repeat: ImageRepeat.repeatX,
        ),
        boxShadow: List<BoxShadow>.of([
          BoxShadow(color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
          BoxShadow(
              color: Colors.yellow, offset: Offset(0, -40), blurRadius: 10)
        ]),
      ),
    ),
  );
}

List<Widget> ismiminHarfleriTextWidget() {
  return <Widget>[
    Text(
      "I",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
    Text(
      "L",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
    Text(
      "K",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
    Text(
      "E",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
    Text(
      "R",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
  ];
}

Widget rowColumnKonu() {
  return Container(
    color: Color.fromRGBO(229, 115, 115, 1),
    child: Column(
      /* Burasi row icindi
             mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch, */
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: ismiminHarfleriTextWidget(),
        ),
        Icon(
          Icons.add_circle,
          color: Colors.green,
          size: 64,
        ),
        Icon(
          Icons.add_circle,
          color: Colors.red,
          size: 64,
        ),
        Icon(
          Icons.add_circle,
          color: Colors.blue,
          size: 64,
        ),
        Icon(
          Icons.add_circle,
          color: Colors.orange,
          size: 64,
        ),
      ],
    ),
  );
}

List<Widget> get TasanContainerlarChildrenListesi {
  return [
    Container(
      height: 75,
      width: 75,
      color: Colors.yellow,
    ),
    Container(
      height: 75,
      width: 75,
      color: Colors.red,
    ),
    Container(
      height: 75,
      width: 75,
      color: Colors.blue,
    ),
    Container(
      height: 75,
      width: 75,
      color: Colors.orange,
    ),
    Container(
      height: 75,
      width: 75,
      color: Colors.blue,
    ),
    Container(
      height: 75,
      width: 75,
      color: Colors.red,
    ),
  ];
}

List<Widget> get ExpandedContainer {
  /**
   * Expandedda widget mumkun olan butun alana yayilmaya calisir
   */
  // genislik degerlerininin bir onemi kalmadi
  //bu nedenle flex yapisi biraz yardimci olabiliyor
  return [
    Expanded(
      flex: 2, //default olarak 1 dir. digerkeri k ise bu 2k olur
      child: Container(
        height: 75,
        width: 75,
        color: Colors.yellow,
      ),
    ),
    Expanded(
      flex: 4,
      child: Container(
        height: 75,
        width: 75,
        color: Colors.red,
      ),
    ),
    Expanded(
      child: Container(
        height: 75,
        width: 75,
        color: Colors.blue,
      ),
    ),
    Expanded(
      child: Container(
        height: 75,
        width: 75,
        color: Colors.orange,
      ),
    ),
  ];
}

List<Widget> get FlexibleContainer {
  //Flexible in expandeddan farki sudur: Bunda width degerini asamaz
  //en fazla width degeri kadar genis olabilir gerekirse kuculebilir
  //Expanded mumkun olan butun alana yayilmaya calisirdi
  return [
    Flexible(
      child: Container(
        height: 300,
        width: 200,
        color: Colors.yellow,
      ),
    ),
    Flexible(
      child: Container(
        height: 300,
        width: 200,
        color: Colors.red,
      ),
    ),
    Flexible(
      child: Container(
        height: 300,
        width: 200,
        color: Colors.blue,
      ),
    ),
  ];
}
