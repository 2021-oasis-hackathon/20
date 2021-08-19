import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kakao_flutter_sdk/all.dart';
import '/mainScene.dart' as mytabs;
import 'AudioPlayer.dart';
import 'Bloc.dart';
import 'firebase.dart';
import 'login.dart';

// void main() {
//   runApp(MaterialApp(
// // home: travelHomePage()));
//       home: mytabs.MainScene()));
// // home: fireBaseHomePage(title: 'text',)));
// // home:Player()));
// }

void main() {
  KakaoContext.clientId = "fa6c6b63c924916251bb03ed19eaead8";
  KakaoContext.javascriptClientId = "	1ce23a8d8e007700c6366cfaa5b1704d";
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/login': (BuildContext context) => new LoginScreen(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() async {
    AccessToken token = await AccessTokenStore.instance.fromStore();
    if (token.refreshToken == null) {
      Navigator.of(context).pushReplacementNamed('/login');
    } else {
      Navigator.of(context).pushReplacementNamed("/main");
    }
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Image.asset('image/Splash.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
      ),
    );
  }
}