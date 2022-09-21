import 'package:code_practice/components/title_with_button.dart';
import 'package:code_practice/components/userHeader_and_searchBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  List<Image> recommended_cities = [
    Image.asset("assets/images/LosAngeles.jpg"),
    Image.asset("assets/images/newyork1.jpg"),
    Image.asset("assets/images/london.jpg"),
  ];

  List<Image> recommended_countries = [
    Image.asset("assets/images/spain.jpg"),
    Image.asset("assets/images/greece.jpg"),
    Image.asset("assets/images/indonesia.jpg"),
  ];

  List<Image> images_activities = [
    Image.asset("assets/images/surfing.png"),
    Image.asset("assets/images/photography.jpg"),
    Image.asset("assets/images/hiking2.jpg"),
    Image.asset("assets/images/biking.png"),
  ];

  List<String> activities_name = ["Surfing", "Photography", "Hiking", "Biking"];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        DiscoverHeader(size: size),
        // TitleWithButton(
        //   title: "Recommended",
        //   press: () {},
        // ),
        //tab bar
        Container(
          child: TabBar(
            //labelPadding: const EdgeInsets.only(left: 25, right: 25),
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: "Recommended Cities"),
              Tab(text: "Recommended Countries")
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          height: 200,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: recommended_cities[index].image,
                            fit: BoxFit.cover)),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: recommended_countries[index].image,
                            fit: BoxFit.cover)),
                  );
                },
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 20, bottom: 7),
              child: Text("Sort by Activities",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 100,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 17),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      Container(
                        //margin: const EdgeInsets.only(right: 50),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                //image: images_activities.keys.elementAt(index),
                                image: images_activities[index].image,
                                fit: BoxFit.cover)),
                      ),
                      Text(activities_name[index],
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                );
              },
            ))
      ],
    ));
  }
}

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//   Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//         //UserHeaderAndSearchBar(size: size),
//         DiscoverHeader(size: size),
//         TitleWithButton(
//           title: "Recommended",
//           press: () {},
//         ),
//         Container(
//           margin: EdgeInsets.only(left: 20, top: 10, bottom: 20),
//           width: size.width * 0.4,
//           child: Column(
//             children: <Widget>[

//               ],
//             )
//           )
//         ],
//       )

//     );
//   }
// }
