import 'package:flutter/material.dart';

class popupMenuKullanimiState extends StatefulWidget {
  const popupMenuKullanimiState({super.key});

  @override
  State<popupMenuKullanimiState> createState() =>
      _popupMenuKullanimiStateState();
}

class _popupMenuKullanimiStateState extends State<popupMenuKullanimiState> {
  String _secilenSehir = "a";
  List<String> _list = ["mavi", "yesil", "kirmizi", "sari"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        itemBuilder: (BuildContext context) {
          return _list
              .map((String each) => PopupMenuItem(
                    child: Text(each),
                    value: each,
                  ))
              .toList();
        },
        onSelected: (String value) {
          print("Secilen sehir: $value");
          setState(() {
            _secilenSehir = value;
          });
        },
        //icon: Icon(Icons.add),
        /* child: Text(
          "$_secilenSehir",
          style: TextStyle(fontSize: 18),
        ), */
      ),
    );
  }
}
