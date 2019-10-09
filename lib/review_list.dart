import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/nasa.png","La nasa","1 vista 5 Fotos","Muy bonitoo y bello"),
        Review("assets/img/BB.jpg","Dianis","1 vista 2 Fotos","Super cools"),
        Review("assets/img/Dani.jpg","Dani","1 vista 6 Fotos","si regresaria la neta"),
        Review("assets/img/LFR.jpg","LFR","1 vista 4 Fotos","Bonito y traquilo ")

      ],
    );
  }

}