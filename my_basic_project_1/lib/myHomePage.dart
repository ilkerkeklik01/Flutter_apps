import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _appBarBackGroundColor = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [popupButton],
        title: Text("My Basic Project 1"),
        backgroundColor: _appBarBackGroundColor,
      ),
      body: HomePageBody(),
    );
  }

  PopupMenuButton<String> get popupButton {
    List<String> list = ["Teal", "Red", "Yellow", "Green", "Orange", "Purple"];
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return list.map((String e) {
          return PopupMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList();
      },
      onSelected: (String value) {
        setState(() {
          if (value == "Teal") {
            _appBarBackGroundColor = Colors.teal;
          } else if (value == "Orange") {
            _appBarBackGroundColor = Colors.orange;
          } else if (value == "Yellow") {
            _appBarBackGroundColor = Colors.yellow;
          } else if (value == "Green") {
            _appBarBackGroundColor = Colors.green;
          } else if (value == "Red") {
            _appBarBackGroundColor = Colors.red;
          } else if (value == "Purple") {
            _appBarBackGroundColor = Colors.purple;
          }
        });
      },
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final String _asset1 = "assets/images/Audi_R8.jpg";
  final String _asset2 = "assets/images/Audi_RS7.jpg";
  final String _asset3 = "assets/images/BMW_M8.jpg";
  final String _asset4 = "assets/images/Mercedes_AMG_GT.jpeg";
  final String _asset5 = "assets/images/Nissan_GTR_R35.jpg";
  final String _asset6 = "assets/images/Volvo_S90.jpg";
  final String _asset7 = "assets/images/Mercedes_W11.jpg";
  final String _asset8 = "assets/images/Ford_Mustang_GT.jpg";
  final String _asset9 = "assets/images/Dodge_Challenger.jpg";

  String? _currentAsset = null;
  Widget build(BuildContext context) {
    return ListView(
      //mainAxisAlignment: MainAxisAlignment.end,
      reverse: false,
      children: [
        getCar,
        SizedBox(
          height: 100,
        ),
        getButtons,
        SizedBox(
          height: 100,
        ),
      ],
    );
  }

  Column get getCar {
    if (_currentAsset == null)
      return Column();
    else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              _currentAsset!,
            ),
            height: 300,
          ),
          SizedBox(
            height: 50,
          ),
          getCarInfo,
        ],
      );
    }
  }

  Column get getButtons {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset1;
                      });
                    },
                    child: Text("Audi R8"))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset2;
                      });
                    },
                    child: Text("Audi RS 7"))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset3;
                      });
                    },
                    child: Text("BMW M8"))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset4;
                      });
                    },
                    child: Text("Mercedes AMG GT"))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset5;
                      });
                    },
                    child: Text("Nissan GTR R35"))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset6;
                      });
                    },
                    child: Text("Volvo S90"))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset7;
                      });
                    },
                    child: Text("Mercedes W11"))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset8;
                      });
                    },
                    child: Text("Mustang"))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentAsset = _asset9;
                      });
                    },
                    child: Text("Challenger"))),
          ],
        ),
      ],
    );
  }

  Container get getCarInfo {
    String message = "";
    if (_currentAsset == _asset1) {
      message = "Audi R8";
    } else if (_currentAsset == _asset2) {
      message = "Audi RS7";
    } else if (_currentAsset == _asset3) {
      message = "BMW M8";
    } else if (_currentAsset == _asset4) {
      message = "Mercedes AMG GT";
    } else if (_currentAsset == _asset5) {
      message = "Nissan GTR R35";
    } else if (_currentAsset == _asset6) {
      message = "Volvo S90";
    } else if (_currentAsset == _asset7) {
      message = "Mercedes W11";
    } else if (_currentAsset == _asset8) {
      message = "Ford Mustang GT";
    } else if (_currentAsset == _asset9) {
      message = "Dodge Challenger";
    }

    return Container(
      child: Text(
        message,
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          shadows: <Shadow>[
            Shadow(
                color: Colors.red.shade400,
                blurRadius: 5,
                offset: Offset(2, 0.5))
          ],
        ),
      ),
    );
  }
}
