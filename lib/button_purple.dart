import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttonpurple extends StatelessWidget{

  String buttonText = "Navigate";

  Buttonpurple(this.buttonText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Navegando"),
        ),
        );
      },
      child:
      Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left:  20.0,
          right: 20.0,

        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.deepPurpleAccent,
            ],
              begin:  FractionalOffset(3.0, 7.0),
              end: FractionalOffset(5.4,2.0),
            stops: [0.0,0.6],
            tileMode: TileMode.clamp
          )
        ),
        child:  Center(
          child: 
          Text(buttonText,
          style:
            TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white
            ),),
        ),
      ),
    );
  }

}