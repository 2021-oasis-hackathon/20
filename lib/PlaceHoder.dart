import 'package:flutter/material.dart';
import 'package:funcoolsex/placeView.dart';
import '/search.dart' as search;
import '/theme_search.dart' as theme_search;
import 'package:funcoolsex/theme_first.dart' as theme_first;
import '/trend.dart' as trend;
import 'model.dart';

class PlaceScene extends StatefulWidget {
  late travel tra;
  @override
  PlaceState createState() => PlaceState(tra);

  PlaceScene({Key? key, required this.tra}) : super(key: key);
}

class PlaceState extends State<PlaceScene>
    with SingleTickerProviderStateMixin {
  late travel tr;
  List<Widget> childerns = [];

  PlaceState(this.tr);

  // 컨트롤러는 TabBar와 TabBarView 객체를 생성할 때 직접 전달
  late TabController controller;
  // 객체가 위젯 트리에 추가될 때 호출되는 함수. 즉, 그려지기 전에 탭바 컨트롤러 샛성.
  @override
  void initState() {
    super.initState();
    // SingleTickerProviderStateMixin를 상속 받아서
    // vsync에 this 형태로 전달해야 애니메이션이 정상 처리된다.
    controller = TabController(vsync: this, length: tr.placeList.length);
    for(var a  in  tr.placeList) {
      print("te $a");
      childerns.add(placeHomePage(place: a));
    }
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
          controller: controller, // 컨트롤러 연결
          children: childerns
      ),
    );
  }

}
