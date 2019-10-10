import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_app/keypad.dart';

class UserProfile extends StatelessWidget{
  String Nombre = "name";
  String Correo = "@";
  String Image = "assets/img/LFR.jpg";

  UserProfile(this.Image,this.Nombre,this.Correo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final disenoimagen = Container(
      margin: EdgeInsets.only(
          top: 100.0,
          left: 25.0
      ),
      width: 95.0,
      height: 95.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            width: 3,
            color: Colors.white
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Image),
        ),
      ),
    );
    
    final name = Container(
      margin: EdgeInsets.only(
        left: 15.0,
        top: 130.0,
      ),
      child: Text(Nombre,textAlign: TextAlign.right,
        style:  TextStyle(
            fontSize: 17.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    );

    final email = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 15.0
      ),
      child:
      Text(Correo,
        textAlign: TextAlign.right,
        style:  TextStyle(
          fontSize: 16.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w100,
          color:  Colors.white70
        ),
      ),
    );

    final inf=Column(
      children: <Widget>[
        name,
        email
      ],
    );

    final user = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      disenoimagen,
      inf,
    ],

    );

    return Stack(
      children: <Widget>[
        user,
      ],
    );
  }

}