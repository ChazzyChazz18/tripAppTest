import 'package:flutter/material.dart';
import 'package:trip_app_test/Place/ui/widgets/card_image_list.dart';
import 'package:trip_app_test/widgets/gradient_back.dart';

class HeaderAppbarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        GradientBack("Welcome", 250.0),
        CardImageList(),
      ],
    );
  }
}
