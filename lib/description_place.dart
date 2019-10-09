import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int starts;
  String descriptionPlace;

  DescriptionPlace(this.namePlace,this.starts,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Colors.amberAccent,
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amberAccent,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.amberAccent,
      ),
    );

    final descripsion = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child:
      Text(descriptionPlace,
        textAlign: TextAlign.justify,
        style:
        TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
        ),
      ),
    );

    final title_starts= Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 320.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child:
                Text(namePlace,
                  style:
                  TextStyle(
                    fontFamily: "Lato",
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                children: <Widget>[
                  star,
                  star,
                  star,
                  star,
                  star_border

                ],
              )
            ],
          );

    return Column(
          children: <Widget>[
            title_starts,
            descripsion
          ],
        );
  }

}