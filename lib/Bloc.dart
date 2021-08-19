import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funcoolsex/model.dart';
import 'package:just_audio/just_audio.dart';

List<travel> trabelList = <travel>[];

DatabaseReference trableDB =
    new FirebaseDatabase().reference().child(travelPath);
var travelPath = "test";

KakaoUser? kakaoUser = KakaoUser("email",
    "name",
    "https://www.kedglobal.com/data/ked/image/2021/06/15/ked202106150022.700x.0.jpg");
// KakaoUser? kakaoUser = null;

var imageUrl = null;

StreamController<String> ImageStreamController = StreamController<String>();
final StreamSubscription subscription =
    ImageStreamController.stream.listen((data) => imageUrl = data);

StreamController<List> TravelWidgetStreamController = StreamController<List>();
final StreamSubscription travelsubscription =
    TravelWidgetStreamController.stream.listen((data) => items = data);

List<String> countryList = [
  "강진",
  "고창",
  "고흥",
  "곡성",
  "광양",
  "광주",
  "구례",
  "군산",
  "김제",
  "나주",
  "남원",
  "담양",
  "목포",
  "무안",
  "무주",
  "보성",
  "부안",
  "순창",
  "순천",
  "신안",
  "여수",
  "영암",
  "영광",
  "완도",
  "완주",
  "익산",
  "임실",
  "장성",
  "장수",
  "장흥",
  "전주",
  "정읍",
  "진도",
  "해남",
  "화순",
  "함평"
];

List<String>? selectedCountryList = [];

var searchItemList = <String>[
  'image/search1.png',
  'image/search2.png',
  'image/search3.png',
  'image/search4.png',
];

var items = [
  // travel("lee1","test1","경주","test",
  //     "https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg","설명"),
  // travel("lee2","test2","경주","test",
  //     "https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg","설명"),
  // travel("lee3","test3","경주ㄴㄴㄴ","test",
  //     "https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg","설명"),
  // travel("lee22","update","경주","update",
  //     "https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg","test"),
];

late AudioPlayer audioPlayer = AudioPlayer();
