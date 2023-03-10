import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(90000, (index) {
    return Ogrenci(
      index + 1,
      "Ogrenci adi ${index + 1}",
      "Ogrenci soyismi ${index + 1}",
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ogrenci Listesi")),
      body: Container(
        child: ListView(
          children: tumOgrenciler
              .map((Ogrenci e) => Card(
                    color: Colors.blue.shade100,
                    shadowColor: Colors.blueGrey.shade500,
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(child: Text(e.id.toString())),
                      title: Text(e.isim),
                      subtitle: Text(e.soyisim),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
