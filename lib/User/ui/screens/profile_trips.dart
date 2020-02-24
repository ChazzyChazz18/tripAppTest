import 'package:flutter/material.dart';
import 'package:trip_app_test/widgets/floating_action_button.dart';

import 'header_appbar_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget getVisitedPlace() {
      return Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 100.0,
              left: 15.0,
              right: 15.0,
            ),
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("lib/assets/img_1.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                )
              ],
            ),
            child: null,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: 180.0,
              ),
              width: 250.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                  )
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Disney World",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 5.0,
                          ),
                          child: Text(
                            "This is just some dummy text that need to cover two lines :D",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 5.0,
                          ),
                          child: Text(
                            "Steps 123,123,123",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top:270.0,
                left: 160.0,
              ),
              child: CustomFloatingActionButton(),
            ),
          ),
        ],
      );
    }

    return Stack(
      children: <Widget>[
        HeaderAppbarProfile(),
        Container(
          margin: EdgeInsets.only(
            top: 260.0,
          ),
          child: ListView(
            children: <Widget>[
              getVisitedPlace(),
              getVisitedPlace(),
              getVisitedPlace(),
            ],
          ),
        ),
      ],
    );
  }
}
