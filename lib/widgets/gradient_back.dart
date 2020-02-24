import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String tittle = "Popular";
  double height = 250.0;

  GradientBack(this.tittle, this.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      constraints: BoxConstraints(
        minWidth: double.infinity,
      ),
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 40.0,
          left: 20.0,
        ),
        child: Text(
          tittle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
