import 'package:flutter/material.dart';
import 'package:trips_app/home_trips.dart';
import 'package:trips_app/profile_trips.dart';
import 'package:trips_app/search_trips.dart';
import 'package:flutter/cupertino.dart';

class EjecutorTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EjecutorTrips();
  }

}

class _EjecutorTrips extends State<EjecutorTrips>{
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()

  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });

  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo,),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo,),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo,),
              title: Text(""),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index){
          switch(index){
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context)=> HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context)=> SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context)=> ProfileTrips(),
              );
              break;

          }
        },
      ),
    );
  }

}