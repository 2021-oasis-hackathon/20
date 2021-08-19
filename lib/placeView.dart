
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:funcoolsex/Bloc.dart';
import 'package:funcoolsex/model.dart';
import 'package:just_audio/just_audio.dart';
import 'Audio.dart' ;

class placeHomePage extends StatefulWidget {
  travelPlace place;
  placeHomePage({Key? key, required this.place}) : super(key: key);
  @override
  placeState createState() => placeState(place);
}

class placeState extends State<placeHomePage> {
  travelPlace place;

  placeState(this.place);

  @override
  Widget build(BuildContext context) {
    print(place.musicURL);
    SetURL(place.musicURL);
    // SetURL("https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f7153491-1987-444c-9d53-b29e3e06b7f0/Lee_Mujin_%28%EC%9D%B4%EB%AC%B4%EC%A7%84%29_-_%EC%8B%A0%ED%98%B8%EB%93%B1_%28Traffic_light%29.mp3?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20210818%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20210818T142004Z&X-Amz-Expires=86400&X-Amz-Signature=ada33acbb63502de1f22f7e814358ed72ac4f9cc2a60823b1389165b40587712&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Lee%2520Mujin%2520%28%25EC%259D%25B4%25EB%25AC%25B4%25EC%25A7%2584%29%2520-%2520%25EC%258B%25A0%25ED%2598%25B8%25EB%2593%25B1%2520%28Traffic%2520light%29.mp3%22");
    var widthSize = MediaQuery
        .of(context)
        .size
        .width * 0.8;
    var heightMax = MediaQuery
        .of(context)
        .size
        .width;
    print("${double.parse(place.locationInMap.x)} ${double.parse(place.locationInMap.y)}");
    return Scaffold(
        appBar: AppBar(
          title: new Text(place.locationInMap.name, style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1.0),
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
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: widthSize,
                  child: ListView(
                    children: [
                      //공간차지
                      Container(
                        height: 20,
                      ),
                      //사실 여기 지도 들어감 ㅇㅇ.
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 300,
                          width: 200,
                          child:
                          FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Center(
                                child: Container(
                                  width: 200,
                                  height: 200,
                                  child: MapWidget(double.parse(place.locationInMap.x), double.parse(place.locationInMap.y)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //공간차지
                      // Container(
                      //   height: heightMax * 0.03,
                      // ),
                      //음악
                      Container(
                          height: heightMax * 0.2,
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              Center(
                                child: Image.asset("image/SoundBackGround.png",
                                  width: widthSize,
                                  height: heightMax * 0.4,)
                                ,)
                              , Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Center(
                                        child: StreamBuilder<PlayerState>(
                                          stream: audioPlayer.playerStateStream,
                                          builder: (context, snapshot) {
                                            final playerState = snapshot.data;
                                            return playerButton(playerState!,widthSize/14);
                                          },
                                        ),
                                      ),
                                      InkWell(
                                        child: Image.asset(
                                          "image/CenterInfo.png",
                                          width: widthSize / 2.3,
                                        ),
                                        onTap: () => print('ImageButton'),
                                      ),
                                      InkWell(
                                        child: Image.asset(
                                          "image/LikeButton.png",
                                          width: widthSize / 6,
                                        ),
                                        onTap: () => print('ImageButton'),
                                      ),
                                      InkWell(
                                        child: Image.asset(
                                          "image/ShareButton.png",
                                          width: widthSize / 6,
                                        ),
                                        onTap: () => print('ImageButton'),
                                      ),
                                    ],
                                  ))
                            ],)
                      ),
                      //공간먹기
                      Container(
                        height: heightMax * 0.03,
                      ),
                      //엘범
                      Container(
                          height: heightMax * 0.8,
                          width: widthSize * 1.2,
                          child:
                          Stack(
                            children: [
                              Transform.rotate(
                                  angle: pi * 1.98,
                                  child: Stack(
                                      children: [
                                        Align(
                                          alignment: FractionalOffset(0.5, 0.5),
                                          child: Image.asset(
                                            "image/albumBackGround.png",
                                            width: widthSize / 0.8
                                            , height: heightMax * 0.7,
                                          )
                                          ,),
                                        Align(
                                          alignment: FractionalOffset(0.5, 0.4),
                                          child:
                                          ClipRRect(
                                            child: Container(
                                              width: widthSize * 0.73,
                                              height: heightMax * 0.45,
                                              child:
                                              FittedBox(
                                                fit: BoxFit.fitWidth,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Image.network(
                                                    place.imageURL,
                                                    loadingBuilder: (context,
                                                        child,
                                                        progress) {
                                                      return progress == null
                                                          ? child
                                                          : CircularProgressIndicator();
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                  )
                              ),

                              Align(
                                alignment: FractionalOffset(0, 0.5),
                                child: InkWell(
                                    onTap: () => {print("좌로")},
                                    child: Image.asset("image/LeftArrow.png",
                                      width: 10,
                                    ))
                                ,),
                              Align(
                                alignment: FractionalOffset(1, 0.5),
                                child: InkWell(
                                    onTap: () => {print("좌로")},
                                    child: Image.asset("image/RightArrow.png",
                                      width: 23,
                                    ))
                                ,),
                            ],)
                      ),
                      //구분선
                      Divider(
                          color: Color.fromRGBO(132, 132, 132, 1),
                          thickness: 2
                      ),
                      //텍스트박스
                      Container(
                        width: widthSize,
                        height: heightMax * 0.8,
                        child: Center(
                          child: Text(place.explanation,
                            textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(165, 163, 163, 1),
                                  fontFamily: 'Noto Sans',
                                  fontSize: 16,
                                  letterSpacing: -0.2,
                                  fontWeight: FontWeight.normal,
                                  height: 1)
                          ),
                        ),),
                      //구분선
                      Divider(
                          color: Color.fromRGBO(132, 132, 132, 1),
                          thickness: 2
                      ),
                    ],
                  )
              )
            ])
    );
  }

}