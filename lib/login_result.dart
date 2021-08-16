import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/all.dart';

import 'package:kakao_flutter_sdk/user.dart';

class LoginResult extends StatefulWidget {
  @override
  _LoginResultState createState() => _LoginResultState();
}

class _LoginResultState extends State<LoginResult> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initTexts();
  }

  _initTexts() async {
    User user = await UserApi.instance.me();

    print(
        "=========================[kakao account]=================================");
    print(user.kakaoAccount.toString());
    print(
        "=========================[kakao account]=================================");


    setState(() {
      nickName = user.kakaoAccount.profile.toJson()['nickname'].toString();
      email = user.kakaoAccount.email.toString();
      imageURL = user.kakaoAccount.profile.toJson()['thumbnail_image_url'].toString();
    });
  }

  String nickName = 'None';
  String email = 'None';
  String imageURL = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(nickName),
              Text(email),
              (imageURL == 'None') ? Text("none") : Image.network(imageURL),
            ],
          ),
        ),
      ),
    );
  }


}
