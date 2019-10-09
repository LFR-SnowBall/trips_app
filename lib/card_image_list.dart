import 'package:flutter/material.dart';
import 'package:trips_app/card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Container(
      height: 350.0,
      child:
      ListView(
        padding:
        EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/C1.jpg"),
          CardImage("assets/img/C2.jpg"),
          CardImage("assets/img/C3.jpg"),
        ],
      ),
    );
  }

}