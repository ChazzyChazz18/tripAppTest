import 'package:flutter/material.dart';
import 'package:trip_app_test/widgets/gradient_back.dart';

class HeaderAppbarProfile extends StatelessWidget {

  String pathImage = "lib/assets/archer_fate_stay.jpg";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        bottom: 10.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
    );

    Widget settingsButton(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(
          top: 40.0,
          right: 20.0,
        ),
        alignment: Alignment.topRight,
        child: IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
          tooltip: "Settings",
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Settings"),
              ),
            );
          },
        ),
      );
    }

    Widget profileInfoItem() {
      return Row(
        children: <Widget>[
          photo,
          Container(
            margin: EdgeInsets.only(
              left: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Armando Villanuevas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Container(
                  child: Opacity(
                    opacity: 0.4,
                    child: Text(
                      "CustomEmailForTest@Test.com",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget getNavigationItem(
        IconData icon, double widthXheight, double opacity) {
      return Opacity(
        opacity: opacity,
        child: Container(
          width: widthXheight,
          height: widthXheight,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () {
              //
            },
            icon: Icon(
              icon,
              color: Colors.indigo,
            ),
          ),
        ),
      );
    }

    Widget profileNavigation() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getNavigationItem(Icons.bookmark_border, 40.0, 1),
            getNavigationItem(Icons.card_giftcard, 40.0, 0.5),
            getNavigationItem(Icons.add, 60.0, 1),
            getNavigationItem(Icons.email, 40.0, 0.5),
            getNavigationItem(Icons.person, 40.0, 0.5),
          ],
        ),
      );
    }

    return Stack(
      children: <Widget>[
        GradientBack("Profile", 350.0),
        Column(
          children: <Widget>[
            settingsButton(context),
            profileInfoItem(),
            profileNavigation(),
          ],
        ),
      ],
    );
  }
}
