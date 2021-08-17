import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:funcoolsex/model.dart';

List<travel> trabelList = <travel>[];

KakaoUser? kakaoUser = null;

var imageUrl = null;

StreamController<String> streamController = StreamController<String>();
final StreamSubscription subscription = streamController.stream.listen((data) => imageUrl = data);

List<String> countList = [
  "강진","고창","고흥","곡성","광양","광주","구례","군산","김제","나주","남원","담양","목포","무안","무주","보성","부안","순창","순천","신안","여수","영암","영광","완도","완주","익산","임실","장성","장수","장흥","전주","정읍","진도","해남","화순","함평"
];
List<String>? selectedCountList = [];

var searchItemList = <String>[
  'image/search1.png',
  'image/search2.png',
  'image/search3.png',
  'image/search4.png',
];