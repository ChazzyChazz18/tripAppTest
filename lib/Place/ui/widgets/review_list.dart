import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 30.0,
              left: 20.0,
              bottom: 10.0,
            ),
            child: Text(
              "Review list",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Lato", fontSize: 17.0, color: Color(0xFFa3a5a7)),
            ),
          ),
          Review(
            "lib/assets/archer_fate_stay.jpg",
            "Pedro Lugo",
            "999 review ● 999 photos",
            3,
            "There is an amazing place in Sri Lanka",
          ),
          Review(
            "lib/assets/archer_fate_stay.jpg",
            "Pedro Lugo",
            "1 review ● 5 photos",
            8,
            "There is an amazing place in Sri Lanka",
          ),
          Review(
            "lib/assets/archer_fate_stay.jpg",
            "Pedro Lugo",
            "1 review ● 5 photos",
            5,
            "There is an amazing place in Sri Lanka",
          ),
        ],
      ),
    );
  }
}
