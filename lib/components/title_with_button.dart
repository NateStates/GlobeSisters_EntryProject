import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key key, this.title, this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        children: <Widget>[
          //SubTitleWithUnderline(text: title),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: kPrimaryColor),
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20)),
              onPressed: press,
              child: Text("View Invited Friends", style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}


class SubTitleWithUnderline extends StatelessWidget {
  const SubTitleWithUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(text,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    margin: EdgeInsets.only(right: 5),
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2)))
          ],
        ));
  }
}

