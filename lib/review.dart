import 'package:flutter/material.dart';
import 'package:trip_app_test/marquee.dart';

class Review extends StatelessWidget {
  String pathImage = "lib/assets/archer_fate_stay.jpg";
  String name = "Pedro Lugo";
  String details = "1 review ● 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  int stars;

  List<Widget> starList = new List(5);

  Review(this.pathImage, this.name, this.details, this.stars, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_empty = Container(
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 18.0,
      ),
    );

    final star_half = Container(
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 18.0,
      ),
    );

    final star = Container(
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 18.0,
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

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 150.0,
            child: MarqueeWidget(
              child: Text(
                details,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 13.0,
                  color: Color(0xFFa3a5a7),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20.0,
            ),
            child: Row(
              children: <Widget>[
                starList.elementAt(0),
                starList.elementAt(1),
                starList.elementAt(2),
                starList.elementAt(3),
                starList.elementAt(4),
              ],
            ),
          ),
        ],
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

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
      ),
    );

    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(name),
          ),
        );
      },
      child: Row(
        children: <Widget>[
          photo,
          userDetails,
        ],
      ),
    );
  }
}
