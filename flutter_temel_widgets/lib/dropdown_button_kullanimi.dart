// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = [
    "Adana",
    "Ankara",
    "Bursa",
    "Izmir",
    "Eskisehir",
    "Balikesir",
    "Istanbul"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      //VALUENIN TURU STRING
      child: DropdownButton<String>(
        hint: Text("Sehir Seciniz"),
        icon: Icon(Icons.arrow_downward),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: TextStyle(
            color: Colors.purple, fontWeight: FontWeight.normal, fontSize: 18),
        /* items: [
          DropdownMenuItem(child: Text("Adana Sehri"), value: "Adana"),
          DropdownMenuItem(child: Text("Ankara Sehri"), value: "Ankara"),
          DropdownMenuItem(child: Text("Izmir Sehri"), value: "Izmir"),
          DropdownMenuItem(child: Text("Bursa Sehri"), value: "Bursa"),
        ], */
        items: _tumSehirler
            .map((String eachSehir) => DropdownMenuItem(
                  child: Text(eachSehir),
                  value: eachSehir,
                ))
            .toList(),
        onChanged: (String? yeniValue) {
          
          setState(() {
            //*************** */
            _secilenSehir = yeniValue;
          });
        },
        value: _secilenSehir,
      ),
    );
  }
}
