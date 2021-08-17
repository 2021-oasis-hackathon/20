import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:funcoolsex/firebase.dart';
import '/mainScene.dart' as mytabs;
//import 'package:firebase_database/firebase_database.dart';
//import 'firebase.dart';

void main() => runApp(
    MaterialApp(
        home: fireBaseHomePage(title: "test",)
        // home: mytabs.MainScene()
    )
);
