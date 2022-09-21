import 'package:code_practice/components/title_with_button.dart';
import 'package:code_practice/components/userHeader_and_searchBar.dart';
import 'package:code_practice/constants.dart';
import 'package:code_practice/screens/invite_list.dart';
import 'package:flutter/material.dart';

/*
  THIS IS SCREEN 2 (Pst Page)
  Note: This page handles the Text Form Field (user entry and validation) that will later be generated into a list at 'invite_list.dart' 
  
  
  Official Description:
  -------------------------------------
Second page “Post”:
   - This page has to have a form with a textformfield input and a button that add to a list the text entered in the input
   - All the text added to the list has to be displayed on the screen and handled by a scrollview
   
   
    !NOTE!: I updated my flutter packages last night and for some reason, my progress on this screen is gone and I could no longer connect to the Android emulator. 
    The following is the description of what I have done in this page:
    - Created 2 Text Form Fields in which the entered input would correspond into a scrollable ListView
    - Implemented “Validation” feature of text form field in which if the user entered input is invalid or empty, then user are prompted to re-enter text
    -Added a button that allow users to view the generated ListView
    - Implemented the theme header bar 
    -Added decorative pictures to maintain the app theme
*/




//TextFormField for Friends Name
var _friendsName;
final _friendsNameController = TextEditingController();

//TextFormField for Friends UserName
var _friendsUserName;
final _friendsUserNameController = TextEditingController();

class InviteFriendsPage extends StatefulWidget {
  const InviteFriendsPage({Key key}) : super(key: key);

  @override
  State<InviteFriendsPage> createState() => _InviteFriendsPageState();
}

class _InviteFriendsPageState extends State<InviteFriendsPage> {
  @override
  void dispose1() {
    _friendsNameController.dispose();
    super.dispose();
  }

  @override
  void dispose2() {
    _friendsUserNameController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      InviteFriendsHeader(size: size),
      // TitleWithButton(
      //   title: "Recommended",
      //   press: () {Navigator.push(context, MaterialPageRoute(builder: (context) {return InviteList();}));},
      // ),
      Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                        validator: (value) {
                          if (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                            return 'Please enter correct Name';
                          else
                            return null;
                        },
                        controller: _friendsNameController,
                        decoration: InputDecoration(
                        labelText: "Friend\'s Name",
                        prefixIcon: Icon(Icons.verified_user_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(
                      height: 10.0,
                    ), //spacing

                    TextFormField(
                        validator: (value) {
                          if (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                            return 'Please enter correct Username';
                          else
                            return null;
                        },
                        controller: _friendsUserNameController,
                        decoration: InputDecoration(
                        labelText: "Friend\'s Username",
                        prefixIcon: Icon(Icons.verified_user_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 10.0),
                    SendInviteButton(context),
                  ],
                ),
              ),

            ],
          ))
    ]);
  }

/* BUTTON */
  OutlinedButton SendInviteButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(400, 50)),
      onPressed: () {
        if(_formKey.currentState.validate())
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
          return InviteList(
              friendsName: _friendsNameController.text,
              friendsUserName: _friendsUserNameController.text);
              }));
        }
      },
      child: Text(
        "Send Invite".toUpperCase(),
        style:
            const TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}



/* HEADER */
class InviteFriendsHeader extends StatelessWidget {
  const InviteFriendsHeader({
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
                      child: Image.asset("assets/images/girls.png",
                          scale: 3, fit: BoxFit.fitWidth)),
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
                    margin:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding + 60),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23))
                    ]),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return InviteList(
                                friendsName: _friendsNameController.text);
                          }));
                        },
                        child: Text("View Invited Friends",
                            style: TextStyle(color: kPrimaryColor))),
                  )),
            )
          ],
        ));
  }
}
