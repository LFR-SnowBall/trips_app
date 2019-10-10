import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';
import 'package:trips_app/header_appbar.dart';
import 'package:trips_app/review_list.dart';

class HomeTrips extends StatelessWidget{

  String description = "Canadá es el país norteamericano que se extiende desde los Estados Unidos en el sur hasta el círculo polar ártico en el norte.\n Las ciudades principales incluyen la enorme Toronto, Vancouver, el centro cinematográfico de la costa oeste, las ciudades de habla francesa Montreal y Quebec, y la capital Ottawa. \n Las vastas franjas de naturaleza de Canadá incluyen el Parque Nacional Banff ubicado en un lago en las Montañas Rocosas. \n También incluye las cataratas del Niágara, un famoso grupo de enormes cascadas.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Canada",4,description),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],

    );
  }

}