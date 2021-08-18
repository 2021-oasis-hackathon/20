import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funcoolsex/model.dart';
import 'package:funcoolsex/mypage/user.dart';
import 'package:funcoolsex/mypage/user_preferences.dart';
import 'package:funcoolsex/mypage/appbar_widget.dart';
import 'package:funcoolsex/mypage/button_widget.dart';
import 'package:funcoolsex/mypage/numbers_widget.dart';
import 'package:funcoolsex/mypage/profile_widget.dart';

import '../Bloc.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // final user = UserPreferences.myUser;
    var user = kakaoUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
            child: Column(
              children: [
              ProfileWidget(
                imagePath: user!.imageURL,
                onClicked: () {},
              ),
              const SizedBox(height: 24), // 이름 이메일
              buildName(user!)
            ],
            )
          ),
    );
  }
    Widget buildName(KakaoUser user) =>
        Column(
          children: [
            Text(
              user.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 4),
            Text(
              user.email,
              style: TextStyle(color: Colors.grey),
            )
          ],
        );

    Widget buildAbout(User user) =>
        Container(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                user.about,
                style: TextStyle(fontSize: 16, height: 1.4),
              ),
            ],
          ),
        );
  }
