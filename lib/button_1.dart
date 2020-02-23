import 'package:flutter/material.dart';
import 'package:trip_app_test/splash_effect.dart';

class Button1 extends StatelessWidget {
  String buttonText = "Navigate";

  Button1(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 20.0,
      ),
      height: 50.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
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
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5.0,
            spreadRadius: 2.5,
          )
        ],
      ),
      child: SplashEffect(
        borderRadius: 30.0,
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Navigating"),
            ),
          );
        },
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
