import 'package:code_practice/components/body.dart';
import 'package:code_practice/constants.dart';
import 'package:code_practice/screens/home_page.dart';
import 'package:code_practice/screens/invite_fiends_page.dart';
import 'package:code_practice/screens/profile_page.dart';
import 'package:flutter/material.dart';


//import 'package:code_practice/body.dart';

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


// class _HomeScreenState extends State<HomeScreen> {
//   int currentIndex = 0;
//   final screens = [
//     Body1(),
//     Body2(),
//     ProfilePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: buildAppBar(),
//       body: IndexedStack(
//         index: currentIndex,
//         children: screens),

//       bottomNavigationBar: BottomNavigationBar(
//           //controls for the index of the changing screen
//           currentIndex: currentIndex,
//           onTap: (index) => setState(() => currentIndex = index),
//           backgroundColor: Color(0xFF0C9869),
//           selectedItemColor: Colors.white,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home_outlined),
//               label: 'Home',
//               //backgroundColor: Colors.white70
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Friends List',
//               //backgroundColor: Colors.white70
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle_outlined),
//               label: 'Profile',
//               //backgroundColor: Colors.white70
//             )
//           ]),
//     );
//   }

// //Menu Bar on the Top Left
//   AppBar buildAppBar() {
//     return AppBar(
//         elevation: 0,
//         leading: IconButton(
//             color: Colors.white, icon: Icon(Icons.menu), onPressed: () {}));
//   }
// }


















//BELOW IS THE ORIGINAL HOMESCREEN
// ignore: must_be_immutable
// class HomeScreen extends StatefulWidget {
//   //const ({ Key? key }) : super(key: key);
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: buildAppBar(),
//         body: Body(),
//         //bottomNavigationBar: BottomNavigationBar(),
//         bottomNavigationBar: BottomNavigationBar(
//           //controls for the index of the changing screen
//           currentIndex: currentIndex,
//           onTap: (index) => currentIndex = index,

//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home_outlined),
//               label: 'Home',
//               backgroundColor: kBackgroundColor
//             ),

//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Friends List',
//               backgroundColor: kBackgroundColor
//             ),

//             BottomNavigationBarItem(
//               icon: Icon(Icons.account_circle_outlined),
//               label: 'Account',
//               backgroundColor: kBackgroundColor
//             )
//           ]
//         ),
//       );
//   }

//   AppBar buildAppBar() {
//     return AppBar(
//           elevation: 0,
//           leading: IconButton(
//               color: Colors.white, 
//               icon: Icon(Icons.menu), 
//               onPressed: (){}
//               )
//             );
//   }

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }




//BELOW IS THE ORIGINAL BOTTOMNAVIGATIONBAR

// class BottomNavigationBar extends StatelessWidget {
//   const BottomNavigationBar({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(
//         left: kDefaultPadding * 2,
//         right: kDefaultPadding * 2,
//         bottom: 6
//       ),
//       height: 80,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [BoxShadow(
//           offset: Offset(0, -10),
//           blurRadius: 25,
//           color: kPrimaryColor.withOpacity(0.38)
//           )
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           IconButton(
//             icon: Icon(Icons.home_outlined), 
//             onPressed: () {}
//             ),

          
//           IconButton(
//             icon: Icon(Icons.search), 
//             onPressed: () {}
//             ),


//           FloatingActionButton(
//             child: Icon(Icons.account_circle_outlined), 
//             onPressed: () {},
//             backgroundColor: kPrimaryColor,
//             //label: Text('')
//             ),
//         ],
//       )
//     );
//   }
// }

