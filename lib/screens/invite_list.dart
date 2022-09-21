import 'package:code_practice/components/title_with_button.dart';
import 'package:code_practice/components/userHeader_and_searchBar.dart';
import 'package:code_practice/constants.dart';
import 'package:flutter/material.dart';

class InviteList extends StatelessWidget {
  InviteList({Key key, this.friendsName, this.friendsUserName}) : super(key: key);

  String friendsName;
  String friendsUserName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            title: Text("Invited Friends List"),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back))),
        body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                ListTile(
                    leading: Icon(Icons.people),
                    title: Text(friendsName),
                    subtitle: Text(friendsUserName),
                    )
              ],
            )));
  }
}



// body: Column(
//           children: [
//             InviteListHeader(size: size),
//             Padding(
//               padding: const EdgeInsets.only(top: 100),
//               child: Container(
//                 padding: EdgeInsets.all(20),
//                 child: ListView(
//                   children: [
//                     ListTile(
//                       leading: Icon(Icons.account_balance_wallet_outlined),
//                       title: Text(friendsName)
//                     )
//                   ],)
//               ),
//             ),
//           ],
//         )