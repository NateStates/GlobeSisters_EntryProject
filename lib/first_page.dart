// First-page “Feed”:
// Have a list view builder with some asset and or network Images that we can scroll
// You have to handle the scrollview

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key key }) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List images = [
    "CaliVibes.png",
    "berkeleyengineering.png",
    "TransferAssist.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "img/"+images[index]
                    )
                  )
                )
                
              );
            }));
  }
}
