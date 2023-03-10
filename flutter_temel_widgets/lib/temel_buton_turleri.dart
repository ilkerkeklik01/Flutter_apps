import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () => debugPrint("Uzun basildi"),
          child: Text("Text Button"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              //backgroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.teal;
                  }
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.orange;
                  }

                  return null;
                },
              ),
              foregroundColor: MaterialStateProperty.all(Colors.yellow),
              //efektim hala mor
              overlayColor:
                  MaterialStateProperty.all(Colors.yellow.withOpacity(0.5))),
          //butun bunlarla oynamamiz gerekioyor
          icon: Icon(Icons.add),
          label: Text("Text Button with Icon"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, //efekt de buna gore degisiyor
            foregroundColor: Colors.amber, //efekt buna dondu
          ),
          child: Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.access_alarm),
          label: Text("Elevated Button with Icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Outlined Button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.purple, width: 2),
            shape: StadiumBorder(),
          ),
          icon: Icon(Icons.accessibility),
          label: Text("Outlined Button with Icon"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            side: BorderSide(color: Colors.red, width: 4),
          ),
          icon: Icon(Icons.accessibility),
          label: Text("Outlined Button with Icon"),
        ),
      ],
    );
  }
}//class TemelButonlar 