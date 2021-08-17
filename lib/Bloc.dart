import 'dart:async';
import 'package:funcoolsex/model.dart';

List<travel> trabelList = <travel>[];

KakaoUser? kakaoUser = null;

var imageUrl = null;

StreamController<String> streamController = StreamController<String>();
final StreamSubscription subscription = streamController.stream.listen((data) => imageUrl = data);