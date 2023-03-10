// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://www.otokokpit.com/wp-content/uploads/2016/12/2017-yeni-volvo-s90-5.jpg";
    var _imgURL2 = "https://www.ilkehaber.com/d/news/34590.jpg";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            //y ekseninde buyu ama ordaki childerin en buyugunde esitle
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //y ekseninde olabildigince butu
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child:
                        Image.asset("assets/images/car.jpg", fit: BoxFit.fill),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Image.network(_imgURL),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: CircleAvatar(
                        /* child: Text(
                            "IK",
                            style: Theme.of(context).textTheme.headline1,
                          ), */
                        backgroundImage:
                            AssetImage("assets/images/avatar.jpeg"),
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/loading.gif",
                fit: BoxFit.fitHeight,
                image: _imgURL2,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
