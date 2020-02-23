import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("lib/assets/img_1.jpg"),
          CardImage("lib/assets/img_2.jpg"),
          CardImage("lib/assets/img_3.jpg"),
          CardImage("lib/assets/img_4.jpg"),
          CardImage("lib/assets/img_5.jpeg"),
        ],
      ),
    );
  }
}
