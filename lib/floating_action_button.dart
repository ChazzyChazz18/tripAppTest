import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomFloatingActionButton();
  }
}

class _CustomFloatingActionButton extends State<CustomFloatingActionButton> {

  IconData heartIcon = Icons.favorite_border;
  String snackText;

  @override
  Widget build(BuildContext context) {

    void changeIcon () {
      if(heartIcon == Icons.favorite_border){
        heartIcon = Icons.favorite;
        snackText = "Added to favorites";
      }else{
        heartIcon = Icons.favorite_border;
        snackText = "Removed from favorites";
      }
    }

    void onPressedFav() {
      setState(() {
        changeIcon();
      });
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(snackText),
        )
      );
    }

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(heartIcon),
    );
  }
}
