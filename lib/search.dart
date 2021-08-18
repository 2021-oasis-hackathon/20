import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funcoolsex/SearchResult.dart';
import 'package:kakao_flutter_sdk/all.dart';
import 'Bloc.dart';
import 'package:filter_list/filter_list.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'firebaseQuery.dart';
import 'model.dart';

class secarchPage extends StatefulWidget {
  secarchPage({Key? key}) : super(key: key);
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<secarchPage> {
  var containerSize;
  @override
  Widget build(BuildContext context) {
    print("23 ${selectedCountryList}");
    containerSize = MediaQuery.of(context).size.height * 0.10;
    return Stack(children: <Widget>[
      Row(
          mainAxisAlignment: MainAxisAlignment.center, // 주 축 기준 중앙
          crossAxisAlignment: CrossAxisAlignment.start, // 교차 축 기준 중앙
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.24,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(56, 200, 255, 1),
                    Color.fromRGBO(196, 102, 247, 1),
                    Color.fromRGBO(255, 106, 117, 1)
                  ]),
                ),
              ),
            ),
          ]),
      Column(children: [
        //빈칸을 위해
        Container(
          height: MediaQuery.of(context).size.width * 0.05,
        ),
        // 로고 이미지
        Image.asset('image/LogoText.png'),
        // 검색바
        Row(
            mainAxisAlignment: MainAxisAlignment.center, // 주 축 기준 중앙
            crossAxisAlignment: CrossAxisAlignment.start, // 교차 축 기준 중앙
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: containerSize,
                  child: Stack(children: <Widget>[
                    Container(
                        child: FlatButton(
                            onPressed: () {
                              OpenFilterDialog();
                            },
                            child: Text('여행을 떠나 볼까요?',
                                style: TextStyle(
                                    color: Color.fromRGBO(165, 163, 163, 1),
                                    fontFamily: 'Noto Sans',
                                    fontSize: 18,
                                    letterSpacing: -0.2,
                                    fontWeight: FontWeight.normal,
                                    height: 1))),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4)
                          ],
                          color: Color.fromRGBO(240, 240, 240, 1),
                        )),
                  ]))
            ]),
        //이미지 돌림판
        Swiper(
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                searchItemList[index],
                fit: BoxFit.fill,
              ),
            );
          },
          itemCount: 4,
          itemWidth: MediaQuery.of(context).size.width * 0.595,
          itemHeight: MediaQuery.of(context).size.width * 0.95,
          layout: SwiperLayout.TINDER,
        )
      ])
    ]);
  }

  void OpenFilterDialog() async {
    await FilterListDialog.display<String>(context,
        listData: countryList,
        selectedListData: selectedCountryList,
        height: 480,
        headlineText: "가자?",
        searchFieldHintText: "어디로?", choiceChipLabel: (item) {
      return item;
    }, validateSelectedItem: (list, val) {
      return list!.contains(val);
    }, onItemSearch: (list, text) {
      if (list!.any(
          (element) => element.toLowerCase().contains(text.toLowerCase()))) {
        return list
            .where(
                (element) => element.toLowerCase().contains(text.toLowerCase()))
            .toList();
      } else {
        return [];
      }
    }, onApplyButtonClick: (list) {
      if (list != null) {
        setState(() {
          selectedCountryList = List.from(list);
          items = ReadAllTrableDataToList();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => travelHomePage()),
          );
        });
      }
    });
  }

}