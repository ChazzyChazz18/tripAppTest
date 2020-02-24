import 'package:flutter/material.dart';
import 'package:trip_app_test/widgets/button_1.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  List<Widget> starList = new List(5);

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_empty = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    //From 0 - 10 to get star values
    List<Widget> getPlaceStars(int starNum) {
      double finalStars;
      List<Widget> filledList = new List();
      bool oneHalfAdded = false;

      if (starNum % 2 == 0) {
        // even
        finalStars = starNum / 2;

        for (int i = 0; i < 5; i++) {
          if (i < finalStars)
            filledList.add(star);
          else
            filledList.add(star_empty);
        }
      } else {
        // odd
        finalStars = (starNum / 2) - 1;

        if (starNum > 0) {
          if (starNum - 1 > 0) {
            for (int i = 0; i < 5; i++) {
              if (i < finalStars) {
                filledList.add(star);
              } else {
                if (!oneHalfAdded) {
                  filledList.add(star_half);
                  oneHalfAdded = true;
                } else {
                  filledList.add(star_empty);
                }
              }
            }
          } else {
            for (int i = 0; i < 5; i++) {
              if (!oneHalfAdded) {
                filledList.add(star_half);
                oneHalfAdded = true;
              } else {
                filledList.add(star_empty);
              }
            }
          }
        }
      }

      return filledList;
    }

    starList = getPlaceStars(stars);

    final tittle_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            /*star, star, star, star, star_empty*/
            starList.elementAt(0),
            starList.elementAt(1),
            starList.elementAt(2),
            starList.elementAt(3),
            starList.elementAt(4),
          ],
        ),
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: new Text(
        descriptionPlace,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        tittle_stars,
        description,
        Button1("Navigate"),
      ],
    );
  }
}
