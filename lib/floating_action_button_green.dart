import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool like = false;


  void cambiolike(){
  }
  void onPressednoFav(){
    setState(() {
      like=false;
    });
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Has quitado favoritos")));



  }
  void onPressedFav(){
    setState(() {
      like=true;
    });
   Scaffold.of(context).showSnackBar(SnackBar(content: Text("Has dado favoritos")));


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(like==false){
      return FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        mini: true,
        tooltip: "Fav",
        onPressed: onPressedFav,
        child: Icon(
          Icons.favorite_border,
        ),
      );
    }
    else{
      return FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        mini: true,
        tooltip: "Fav",
        onPressed: onPressednoFav,
        child: Icon(
          Icons.favorite,
        ),
      );
    }
  }

}