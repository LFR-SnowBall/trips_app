import 'package:flutter/material.dart';
import 'package:trips_app/gradient_back.dart';
import 'package:trips_app/user_profile.dart';
import 'package:trips_app/keypad.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
    Stack(
    children: <Widget>[
        GradientBack("Perfil"),
    UserProfile("assets/img/LFR.jpg","LFR","luisitoreal01@gmail.com")
    ],
    ),
        KeyPad()
      ],

    );
  }

}