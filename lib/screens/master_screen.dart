import 'package:code_practice/constants.dart';
import 'package:code_practice/screens/home_page.dart';
import 'package:code_practice/screens/invite_fiends_page.dart';
import 'package:code_practice/screens/profile_page.dart';
import 'package:flutter/material.dart';


/*
  THIS IS THE MASTER SCREEN, THE SCREEN THAT HANDLES SCREEN NAVIGATION, APPBAR, AND BOTTOM-NAVIGATION-BAR
*/




class MasterScreen extends StatefulWidget {
  //const Home_Screen({ Key key }) : super(key: key);
  @override
  State<MasterScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MasterScreen> {
  int currentIndex = 0;
  final screens = [
    HomePage(), 
    InviteFriendsPage(),
    ProfilePage(),
  ];
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          //controls for the index of the changing screen
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,

          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF0C9869), //Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              //backgroundColor: Colors.white70
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Friends List',
              //backgroundColor: Colors.white70
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
              //backgroundColor: Colors.white70
            )
          ]),

      appBar: buildAppBar(),

    );
  }

//Menu Bar on the Top Left
  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        leading: IconButton(
            color: Colors.white, icon: Icon(Icons.menu), onPressed: () {}));
  }
}
