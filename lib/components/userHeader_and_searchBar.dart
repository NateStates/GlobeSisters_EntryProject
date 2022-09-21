import 'package:code_practice/screens/invite_list.dart';
import 'package:code_practice/screens/invite_fiends_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';


class DiscoverHeader extends StatelessWidget {
  const DiscoverHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;



  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 30,
              ),
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Text(" Welcome!\n Let's Discover",
                        //style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white, fontWeight: FontWeight.bold,)
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(bottom: 35, right: 40),
                      child: Image.asset("assets/images/travel.png")),
                  //Image.asset("assets/images/sister.png")
                ],
              ),
            ),
            Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23))
                        ]),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "Where to go?",
                                hintStyle: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.5),
                                ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              )),
                        ),
                        Image(
                            image: AssetImage('assets/icons/search-icon-2.png'))
                      ],
                    )))
          ],
        ));
  }
}


class InviteListHeader extends StatelessWidget {
  const InviteListHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30),
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(" Invite others!\n It's Girl's Trip!",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(bottom: 15, right: 25),
                      child: Image.asset("assets/images/girls.png", scale: 3, fit: BoxFit.fitWidth)),
                  //Image.asset("assets/images/sister.png")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding+60),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  )
                ),
            )
          ],
        ));
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30),
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Text(" Looking good,\n Sister!",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  Spacer(),
                  Container(
                      padding: EdgeInsets.only(bottom: 20, right: 25),
                      child: Image.asset("assets/images/flower2.png")),
                  // Image.asset("assets/images/sister.png")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding + 25),
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      height: 54,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: kPrimaryColor.withOpacity(0.23))
                          ]),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintText: "California, USA",
                                  hintStyle: TextStyle(
                                    color: kPrimaryColor,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                )),
                          ),
                          Icon(Icons.location_on_outlined)
                          //Image(image: AssetImage('assets/images/location.png'))
                        ],
                      ))),
            )
          ],
        ));
  }
}
