// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardVeListTileKullanimi extends StatelessWidget {
  const CardVeListTileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card ve List tile")),
      body: ListView(
        reverse: true,
        children: [
          Column(
            children: [
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
            ],
          ),
          Text("Selam en alttayiz"),
          ElevatedButton(
            onPressed: () {},
            child: Text("Buton"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Center(
          child: Card(
            color: Colors.blue.shade100,
            shadowColor: Colors.blueGrey.shade500,
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.add)),
              title: Text("Baslik"),
              subtitle: Text("Alt Baslik"),
              trailing: Icon(Icons.real_estate_agent),
            ),
          ),
        ),
        Divider(
          color: Colors.blueAccent,
          thickness: 2,
          height: 15,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  } //Tek liste elemani metotu bitti
}
