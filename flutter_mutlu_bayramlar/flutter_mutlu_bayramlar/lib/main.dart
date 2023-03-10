import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _img1 =
        "https://www.medyagazete.com/images/haberler/2021/05/bayram-sekeri-satislari-dustu-3-1620819917.jpg";
    String _img2 =
        "https://media.istockphoto.com/id/475460738/tr/foto%C4%9Fraf/blue-mosque-and-hagia-sophia.jpg?s=612x612&w=0&k=20&c=7p69zR3Lauv3mBnu_W9CRlJJ0jTC5rNshd869_THpHA=";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Mutlu Bayramlar",
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        backgroundColor: Colors.blue[50],
        body: Center(
          child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bayram Sekeri",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Image(
                  image: NetworkImage(_img1),
                  width: 300,
                ),
                Text(
                  "Camii",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Image.network(_img2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
