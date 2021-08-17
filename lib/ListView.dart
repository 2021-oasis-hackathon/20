import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("리스트 입니다!"),
        ),
        body: Center(
          child: _buildList(),
        ),
      ),
    );
  }
}

Widget _buildList() => ListView(
    children: [
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
      _tile("안녕하세요?!", "반가워요!!!"),
    ]
);

ListTile _tile(String title, String subtitle) => ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    leading: _userImage(images[Random().nextInt(images.length)])
);

ClipRRect _userImage(String url) => ClipRRect(
  borderRadius: BorderRadius.circular(100),
  child: Image.network(url),
);

final images = [
  "https://randomuser.me/api/portraits/men/88.jpg",
  "https://randomuser.me/api/portraits/women/66.jpg",
  "https://randomuser.me/api/portraits/women/26.jpg",
  "https://randomuser.me/api/portraits/men/64.jpg",
  "https://randomuser.me/api/portraits/women/52.jpg",
  "https://randomuser.me/api/portraits/women/22.jpg",
  "https://randomuser.me/api/portraits/women/12.jpg",
  "https://randomuser.me/api/portraits/women/80.jpg",
  "https://randomuser.me/api/portraits/women/20.jpg",
];