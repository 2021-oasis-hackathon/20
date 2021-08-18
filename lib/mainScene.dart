import 'package:flutter/material.dart';
import 'package:funcoolsex/mypage/profile_page_main.dart';
import 'package:kakao_flutter_sdk/all.dart';
import '/search.dart' as search;
import '/theme_search.dart' as theme_search;
import 'package:funcoolsex/theme_first.dart' as theme_first;
import '/trend.dart' as trend;
import 'package:funcoolsex/mypage/profile_page_main.dart' as profile;





class MainScene extends StatefulWidget {
  @override
  MainSceneState createState() => MainSceneState();
}

class MainSceneState extends State<MainScene>
    with SingleTickerProviderStateMixin {
  // 컨트롤러는 TabBar와 TabBarView 객체를 생성할 때 직접 전달
  late TabController controller;

  // 객체가 위젯 트리에 추가될 때 호출되는 함수. 즉, 그려지기 전에 탭바 컨트롤러 샛성.
  @override
  void initState() {
    super.initState();

    // SingleTickerProviderStateMixin를 상속 받아서
    // vsync에 this 형태로 전달해야 애니메이션이 정상 처리된다.
    controller = TabController(vsync: this, length: 4);
  }

  // initState 함수의 반대.
  // 위젯 트리에서 제거되기 전에 호출. 멤버로 갖고 있는 컨트롤러부터 제거.
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller, // 컨트롤러 연결
          children: [
            search.secarchPage(),
            trend.TrendWidget(),
            theme_first.Theme1Widget(),
            profile.Profile()
          ]),
      bottomNavigationBar: Container(
        child: TabBar(controller: controller, // 컨트롤러 연결
            tabs: [
              // 아이콘은 글자 수 같은 걸로 선택. 의미 없음. 제목에 들어간 색상은 중요.
              Tab(icon: Icon(Icons.card_travel), text: '검색'),
              Tab(
                icon: Icon(Icons.donut_small),
                text: '테마',
              ),
              Tab(icon: Icon(Icons.table_chart), text: '트렌드'),
              Tab(icon: Icon(Icons.table_chart), text: '마이페이지')
            ]),
        color: Colors.black12,
      ),
    );
  }
}
