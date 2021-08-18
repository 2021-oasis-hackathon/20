import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'firebaseQuery.dart';
import 'model.dart';
import 'Bloc.dart';

DatabaseReference userdb = new FirebaseDatabase().reference().child("user");
DatabaseReference trableDB = new FirebaseDatabase().reference().child("trable");

class travelHomePage extends StatefulWidget {
  travelHomePage({Key? key}) : super(key: key);

  @override
  travelState createState() => travelState();
}

class travelState extends State<travelHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("검색결과", style: TextStyle(
              color: Color.fromRGBO(255, 0, 0, 1.0),
              fontFamily: 'Noto Sans',
              fontSize: 18,
              letterSpacing: -0.2,
              fontWeight: FontWeight.normal,
              height: 1)
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stream(),
        );
  }


  Widget Stream(){
    return StreamBuilder(
      stream: trableDB.onValue,
      builder: (context, AsyncSnapshot<Event> snap){
        if(!snap.hasData) return Center(child: CircularProgressIndicator());
        List<Widget> widgetList = <Widget>[];
        Map<String, dynamic> mapOfMaps = Map<String, dynamic>.from(snap.data!.snapshot.value);
        mapOfMaps.entries.forEach((element) {
          travel tr = new travel.fromJson(element.value);
          print(tr.placeList);
          if(selectedCountryList!.contains(tr.locationName))
              widgetList.add(TravelWidget(context,tr));
        });
        return (widgetList.length != 0) ?
            ListView(
              padding: const EdgeInsets.all(20),
              children: widgetList,
            )
            : Center(child: Text("해당하는 여행지가 없습니다 ㅠㅠ"));
      },
    );
  }
}