import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:funcoolsex/Bloc.dart';
import 'package:funcoolsex/placeView.dart';
import 'package:latlong/latlong.dart';

import 'PlaceHoder.dart';

//유저 정보를 담고 있는 클래스
class KakaoUser {
  dynamic email;
  dynamic name;
  dynamic imageURL;

  String toString() => name;


  fromJson(Map<dynamic, dynamic> json) {
    email = json['id'];
    name = json['name'];
    imageURL = json['imageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.email;
    data['name'] = this.name;
    data['imageURL'] = this.imageURL;
    return data;
  }

  KakaoUser(this.email, this.name, this.imageURL);
}

class LocationInMap{
  dynamic x;
  dynamic y;
  dynamic name;

  LocationInMap(this.x, this.y, this.name);

  LocationInMap.fromJson(Map<dynamic, dynamic> json) {
    this.x = json['x'];
    this.y = json['y'];
    this.name = json['name'];
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['x'] = this.x;
    data['y'] = this.y;
    data['name'] = this.name;
    return data;
  }


  String toString() => name;
}

//여행 테마를 가진 클래스
//trable을 list에 넣어주는 함수 생성해야함
//review를 list에 넣어주는 함수 생성해야함.
class travel {
  //여행의 이름 (key)
  dynamic travelName;
  //여행을 만든 사람 ID
  dynamic owner;
  //지역 이름
  dynamic locationName;
  //테마
  dynamic theme;
  //여행 대표말
  dynamic intro;
  //여행 대표 이미지
  dynamic imageUrl;
  //각각 가리고 있는 장소 정보, 리뷰 리스트
  late List<travelPlace> placeList = [];

  addPlaceList(travelPlace item){
    placeList.add(item);
  }

  //여행 생성자
  travel(this.owner, this.travelName, this.locationName, this.theme ,this.imageUrl, this.intro){
    placeList = <travelPlace>[];
  }

  travel.fromJson(Map<dynamic, dynamic> json) {
    this.travelName = json['trableName'];
    this.owner = json['owner'];
    this.locationName = json['locationName'];
    this.theme = json['theme'];
    List<travelPlace> tempList = [];
    var tr = new travelPlace("imageURL", new LocationInMap(0, 0, "name"), "", "");
    json['placeList'].forEach((k,v) =>{
        tempList.add(travelPlace.fromJson(v))
    });
        // tempList.add(travelPlace.fromJson(v)));
    // print(tempList);
    this.placeList = tempList;
    this.imageUrl = json['imageUrl'];
    this.intro = json['intro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    Map<String, dynamic> placeListMap = new Map<String, dynamic>();
    data['trableName'] = this.travelName;
    data['owner'] = this.owner;
    data['locationName'] = this.locationName;
    data['theme'] = this.theme;
    data['intro'] = this.intro;
    data['imageUrl'] = this.imageUrl;
    if(placeList != null && placeList.length != 0)
      for(int i= 0 ;i <placeList.length;i++) {
        placeListMap['place${i+1}'] = placeList[i].toJson();
      }
    data['placeList'] = placeListMap;
    return data;
  }

  String toString() => travelName;

}

//각각의 여행정보를 담은 클래스
class travelPlace {
  //여행 대표 이미지 (key)
  dynamic imageURL;
  //여행 추천 음악
  dynamic musicURL;
  //장소에 대한 정보
  LocationInMap locationInMap = LocationInMap(0, 0, "name");
  //여행 설명
  dynamic explanation;

  travelPlace(this.imageURL,  this.locationInMap,this.musicURL, this.explanation);

  String toString() => locationInMap.toString();
  String toListItem() => '{ ${this.locationInMap.toString()}, ${this.imageURL}, ${this.musicURL}, ${this.locationInMap}, ${this.explanation}, }';


  travelPlace.fromJson(Map<dynamic, dynamic> json) {
    this.imageURL = json['imageURL'];
    this.musicURL = json['musicURL'];
    print(json['locationInMap']);
    this.locationInMap = new LocationInMap.fromJson(json['locationInMap']);
    explanation = json['explanation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageURL'] = this.imageURL;
    data['musicURL'] = this.musicURL;
    data['locationInMap'] = this.locationInMap.toJson();
    data['explanation'] = this.explanation;
    return data;
  }
}

Widget PlaceWidget(travelPlace plac) {
  String intro = plac.explanation;
  String imagUrl = plac.imageURL;
  return
    Container(
      height: 200,
      width: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(3, 3),
              blurRadius: 4)
        ],
      ),
      child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  child: Align(
                    widthFactor: 0.5,
                    heightFactor: 0.3,
                    child: Image.network(
                      imagUrl,
                      loadingBuilder: (context, child, progress) {
                        return progress == null
                            ? child
                            : CircularProgressIndicator();
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 50,
                child: Text(intro,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        fontFamily: 'Noto Sans',
                        fontSize: 100,
                        letterSpacing: -0.2,
                        fontWeight: FontWeight.normal,
                        height: 1)
                ),
              ),
            ],
          )

      ),
    );
}


//intro "아따 소쇄원에서 신선놀음"
//https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg
Widget TravelWidget(dynamic conxtext,travel tr){
  String intro = tr.intro;
  String imagUrl = tr.imageUrl;
  var maxHeigh = MediaQuery.of(conxtext).size.height;
  var maxWidth = MediaQuery.of(conxtext).size.width;
  print(tr.toJson());
  return Container(
      height: maxWidth * 0.4,
      width: maxWidth * 0.9,
      alignment: Alignment.center,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(3, 3),
            blurRadius: 4)
      ],
      ),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(conxtext, MaterialPageRoute(builder: (context) => PlaceScene(tra: tr,)),
                );
              },
                child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: maxWidth * 0.38,
                  width: maxWidth * 0.85,
                  child:
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child : Align(
                    alignment: Alignment.center,
                    child: Image.network(
                      imagUrl,
                      loadingBuilder: (context,child,progress) {
                        return progress == null ? child : CircularProgressIndicator();
                      },
                    ),
                  ),
                  ),
                ),
              ),
              ),
            Positioned(
              bottom: 5,
              left: 5,
              child: Text(intro,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.normal,
                      height: 1),

              ),
            ),
          ],
        )
    ),
    );
}
class MyOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final double thickness;

  const MyOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.style,
    this.thickness = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
        Color.fromRGBO(56, 200, 255, 1),
        Color.fromRGBO(196, 102, 247, 1),
        Color.fromRGBO(255, 106, 117, 1)
      ]),),
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.all(thickness),
        child: OutlinedButton(
          onPressed: onPressed,
          style: style,
          child: child,
        ),
      ),
    );
  }
}


// return Center(
//   child: Container(
//       width: 200,
//       height: 200,
//       child: Map(long,lat),
//   ),
// );

Widget MapWidget(double long, double lat){
  return FlutterMap(
    options: MapOptions(
      center: LatLng(long, lat),
      zoom: 18.0,
    ),
    layers: [
      TileLayerOptions(
          urlTemplate:
          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c']),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 80.0,
            height: 80.0,
            point: LatLng(long,lat),
            builder: (ctx) => Container(
              child: Icon(
                Icons.location_on,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    ],
  );
}