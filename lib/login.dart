import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:funcoolsex/login_result.dart';

// Import kakao sdk
import 'package:kakao_flutter_sdk/auth.dart';
import 'package:kakao_flutter_sdk/user.dart';
import 'package:kakao_flutter_sdk/common.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {
  var code;
  @override
  void initState() {
    super.initState();
    _initKakaoTalkInstalled();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _initKakaoTalkInstalled() async {
    final installed = await isKakaoTalkInstalled();
    setState(() {
      _isKakaoTalkInstalled = installed;
      print(_isKakaoTalkInstalled);
    });
  }

  bool _isKakaoTalkInstalled = true;

  _issueAccessToken(String authCode) async {
    try {
      var token = await AuthApi.instance.issueAccessToken(authCode);
      AccessTokenStore.instance.toStore(token);
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => LoginResult()),);
    } catch (e) {
      print("error on issuing access token: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    // KaKao native app key
    KakaoContext.clientId = "fa6c6b63c924916251bb03ed19eaead8";
    // KaKao javascript key
    KakaoContext.javascriptClientId = "1ce23a8d8e007700c6366cfaa5b1704d";

    isKakaoTalkInstalled();

    return Scaffold(
      appBar: AppBar(
        title: Text("Kakao Flutter SDK Login"),
        actions: [],
      ),
      body: Center(
        child: Column(
        children: <Widget>[
          Image(
            width: 220,
            height: 400,
            image : AssetImage("image/kakaologin.png"),
          ),
          InkWell(
              child: Image.asset('image/kakaologin.png', width: 220, height: 40),
              onTap: ()=> !_isKakaoTalkInstalled ? _loginWithKakao : _loginWithTalk
          ),


        ],
        )),
      );
  }

  Future<void> retryAfterUserAgrees(List<String> requiredScopes) async {
    // Getting a new access token with current access token and required scopes.
    String authCode = await AuthCodeClient.instance.requestWithAgt(requiredScopes);
    AccessTokenResponse token = await AuthApi.instance.issueAccessToken(authCode);
    AccessTokenStore.instance.toStore(token);
    // Store access token in AccessTokenStore for future API requests.
  }


  _loginWithKakao() async {
    try {
      var code = await AuthCodeClient.instance.request();
      User user = await UserApi.instance.me();
      if (user.kakaoAccount.emailNeedsAgreement) {
        await retryAfterUserAgrees(["account_email"]);
      }
      await _issueAccessToken(code);
    } catch (e) {
      print(e);
    }
  }

  _loginWithTalk() async {
    try {
      var code = await AuthCodeClient.instance.requestWithTalk();
      User user = await UserApi.instance.me();
      if (user.kakaoAccount.emailNeedsAgreement) {
        await retryAfterUserAgrees(["account_email"]);
      }
      await _issueAccessToken(code);
    } catch (e) {
      print(e);
    }
  }
}