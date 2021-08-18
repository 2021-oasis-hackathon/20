import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funcoolsex/mypage/user.dart';
import 'package:funcoolsex/mypage/user_preferences.dart';
import 'package:funcoolsex/mypage/appbar_widget.dart';
import 'package:funcoolsex/mypage/button_widget.dart';
import 'package:funcoolsex/mypage/numbers_widget.dart';
import 'package:funcoolsex/mypage/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () {},
              ),
              const SizedBox(height: 24), // 이름 이메일
              buildName(user),
              const SizedBox(height: 24), // 로그아웃 버튼
              Align(child: buildlogoutButton()),
              const SizedBox(height: 24), // 이메일 버튼
              Center(child: buildemailButton()),
              const SizedBox(height: 24), // 팔로워 위젯
              NumbersWidget(),
              const SizedBox(height: 20), // 즐겨찾기한 쉼터 최근 본 쉼터
              buildAbout(user),
            ],
          ),
        ],
      ),
    );
  }
    Widget buildName(User user) =>
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

    Widget buildlogoutButton() =>
        ButtonWidget(
          text: "이메일 정보",
          onClicked: () {},
        );
    Widget buildemailButton() =>
        ButtonWidget(
          text: '  로그아웃  ',
          onClicked: () {},
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
