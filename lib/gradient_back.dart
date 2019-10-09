import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{

  String title = "Popular";

  GradientBack(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.deepPurpleAccent,
            ],
          begin:  FractionalOffset(3.0, 7.0),
          end: FractionalOffset(5.4,2.0),
          stops:[0.0,0.6],
          tileMode: TileMode.clamp
        )
      ),
      child:
      Text(title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold
      ),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }

}