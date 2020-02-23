import 'package:flutter/material.dart';
import 'screen_widgets/home_trips.dart';
import 'screen_widgets/search_trips.dart';
import 'screen_widgets/profile_trips.dart';

class ChazzyTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChazzyTrips();
  }
}

class _ChazzyTrips extends State<ChazzyTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(), //0
    SearchTrips(), //1
    ProfileTrips(), //2
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(""),
            ),
          ],
          elevation: 50.0,
          selectedIconTheme: IconThemeData(
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
