import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/img/nasa.png";
  String pathName = "LFR";
  String details = "1 Vista 5 Fotos";
  String comment = "muy bonito y bello";

  Review(this.pathImage,this.pathName,this.details,this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),

      width: 65.0,
      height: 65.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),

    );

    final UserName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child:
      Text(pathName,
      textAlign: TextAlign.left,
        style:  TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),
      ),

    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child:
      Text(details,
        textAlign: TextAlign.left,
        style:  TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            color: Colors.black54,
        ),
      ),

    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child:
      Text(comment,
        textAlign: TextAlign.left,
        style:  TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        UserName,
        userInfo,
        userComment
      ],

    );

    return Row(
      children: <Widget>[
        photo,
        userDetails

      ],
    );
  }

}