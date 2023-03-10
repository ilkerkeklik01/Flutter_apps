import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage build Metodu calisti");
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            MyNewTextWidget(),
            Text(
              "$_sayac",
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sayaciArttir();
          debugPrint("butona tiklandi");
        },
        child: Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      //setState kendisiin icinde bulundugu fonksiyonun okunmasi bitince calisir
      _sayac++; //yani sayaci arttirma islemini fonbksiyonun neresinde yaptiginin onemi yok
    });
    //bu metot bildigin hot Reload yapar(hot reload butun build metotlarini calistirirken setState sadece ilgili widgetin build metotunu calistirir)
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Pressed the button this many times",
      style: TextStyle(fontSize: 24),
    );
  }
}
