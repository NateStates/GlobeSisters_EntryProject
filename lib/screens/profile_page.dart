import 'package:code_practice/components/userHeader_and_searchBar.dart';
import 'package:code_practice/constants.dart';
import 'package:flutter/material.dart';


/*
  THIS IS SCREEN 3 (Profile Pafge)
  Note: This page handles the Text Field entry for user Profile   
  
  
  Official Description:
  -------------------------------------
Third-page "Profile":
  - You have to design a profile page with a custom image and information
  - It has to contain an image, first name, last name, age, and basic info of your choice
*/

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 100;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            ProfileHeader(size: size),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/sister3.jpg"))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          color: kPrimaryColor,
                        ),
                        child: Icon(Icons.edit, color: Colors.white),
                      ))
                ],
              ),
            ),
              buildTextField("Full Name", "Laura Harris"),
              buildTextField("Email", "lauraharris@gmail.com"),
              buildTextField("Age", "22"),
              buildTextField("Username", "@Lauren_H")
          ],
        ),
      ),
    )
        );
  }

  Widget buildTextField(String labelText, String placeholder) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 5, top:5),
      child: TextField(
                decoration: InputDecoration(
                    labelText: labelText,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: placeholder,
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700])),
              ),
    );
  }
}
