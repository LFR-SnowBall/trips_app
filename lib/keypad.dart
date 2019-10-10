import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final B1 = Container(
     margin: EdgeInsets.only(
       left: 25.0,
     ),
        child: FloatingActionButton(
          backgroundColor: Colors.white70,
          mini: true,
          tooltip: "Fav",
          onPressed: null,
          child: Icon(
            Icons.flag,
          ),
        ),
    );

    final B2 = Container(
      margin: EdgeInsets.only(
        left: 25.0,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white70,
        mini: true,
        tooltip: "Fav",
        onPressed: null,
        child: Icon(
          Icons.shopping_basket,
        ),
      ),
    );

    final B3 = Container(
      margin: EdgeInsets.only(
        left: 25.0,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white70,
        mini: false,
        tooltip: "Fav",
        onPressed: null,
        child: Icon(
          Icons.add,
        ),
      ),
    );

    final B4 = Container(
      margin: EdgeInsets.only(
        left: 25.0,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white70,
        mini: true,
        tooltip: "Fav",
        onPressed: null,
        child: Icon(
          Icons.email,
        ),
      ),
    );

    final B5 = Container(
      margin: EdgeInsets.only(
        left: 25.0,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white70,
        mini: true,
        tooltip: "Fav",
        onPressed: null,
        child: Icon(
          Icons.person,
        ),
      ),
    );

      return Row(
      children: <Widget>[
        B1,
        B2,
        B3,
        B4,
        B5
      ],

    );
  }

}