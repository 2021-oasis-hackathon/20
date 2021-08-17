import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrendWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator TrendWidget - FRAME
    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 562,
              left: 199,
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle29.png'),
                        fit: BoxFit.fitWidth),
                  ))), // 업로드 오른쪽
          Positioned(
              top: 562,
              left: 36,
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle30.png'),
                        fit: BoxFit.fitWidth),
                  ))), // 업로드 왼쪽
          Positioned(
              top: 326,
              left: 199,
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle2650.png'),
                        fit: BoxFit.fitWidth),
                  ))), // 인기 많은 쉼터 오른쪽
          Positioned(
              top: 326,
              left: 36,
              child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle2651.png'),
                        fit: BoxFit.fitWidth),
                  ))), // 인기 많은 쉼터 왼쪽
          Positioned(
              top: 289,
              left: -38,
              child: Text(
                '가장 인기 많은 쉼터',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Noto Sans',
                    fontSize: 17,
                    letterSpacing: -0.23999999463558197,
                    fontWeight: FontWeight.normal,
                    height: 1.1764705882352942),
              )), // 인기 많은 쉼터 text
          Positioned(
              top: 526,
              left: -62,
              child: Text(
                '새로운 업로드',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Noto Sans',
                    fontSize: 17,
                    letterSpacing: -0.23999999463558197,
                    fontWeight: FontWeight.normal,
                    height: 1.1764705882352942),
              )), // 업로드
          Positioned(
              top: 507,
              left: 36,
              child: SvgPicture.asset('assets/images/rectangle47.svg',
                  semanticsLabel: 'rectangle47')), //.
          Positioned(
              top: 44,
              left: -1,
              child: Container(
                  width: 376,
                  height: 225,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle2649.png'),
                        fit: BoxFit.fitWidth),
                  ))), //.
          Positioned(top: 524, left: 137, child: Text("")), //.
          Positioned(
              top: 289,
              left: 181,
              child: Container(
                  width: 23,
                  height: 23,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 1.9167617559432983,
                        left: 1.9166667461395264,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                  ]))), //.
          Positioned(
              top: 426,
              left: 135,
              child: Container(
                  width: 45.703125,
                  height: 45,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 5.625000953674316,
                        left: 5.712890625,
                        child: Container(
                            width: 34.27734375,
                            height: 33.75,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 34.27734375,
                                      height: 33.75,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 2)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                1.0252857370480475e-16,
                                                1.674418568611145),
                                            end: Alignment(-1.674418568611145,
                                                7.573026813935055e-15),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(231, 231, 231, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                34.27734375, 33.75)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(235, 235, 235, 1),
                                              Color.fromRGBO(255, 255, 255, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(65, 217, 250, 1),
                                              Color.fromRGBO(30, 182, 215, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 3.749988555908203,
                                  left: 3.80863094329834,
                                  child: Container(
                                      width: 26.660152435302734,
                                      height: 26.25000762939453,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 1)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(228, 228, 228, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                26.660152435302734,
                                                26.25000762939453)),
                                      ))),
                            ]))),
                    Positioned(
                        top: 16.630781173706055,
                        left: 19.04296112060547,
                        child: SvgPicture.asset('assets/images/vector41.svg',
                            semanticsLabel: 'vector41')),
                  ]))), // 인기 많은 쉼터 오른쪽 상자 안 원
          Positioned(
              top: 426,
              left: 297,
              child: Container(
                  width: 45.703125,
                  height: 45,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 5.625000953674316,
                        left: 5.712890625,
                        child: Container(
                            width: 34.27734375,
                            height: 33.75,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 34.27734375,
                                      height: 33.75,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 2)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                1.0252857370480475e-16,
                                                1.674418568611145),
                                            end: Alignment(-1.674418568611145,
                                                7.573026813935055e-15),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(231, 231, 231, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                34.27734375, 33.75)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(235, 235, 235, 1),
                                              Color.fromRGBO(255, 255, 255, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(65, 217, 250, 1),
                                              Color.fromRGBO(30, 182, 215, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 3.749988555908203,
                                  left: 3.80863094329834,
                                  child: Container(
                                      width: 26.660152435302734,
                                      height: 26.25000762939453,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 1)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(228, 228, 228, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                26.660152435302734,
                                                26.25000762939453)),
                                      ))),
                            ]))),
                    Positioned(
                        top: 16.630781173706055,
                        left: 19.04296112060547,
                        child: SvgPicture.asset('assets/images/vector41.svg',
                            semanticsLabel: 'vector41')),
                  ]))), // 인기 많은 쉼터 왼쪽 상자 안 원
          Positioned(
              top: 663,
              left: 297,
              child: Container(
                  width: 45.703125,
                  height: 45,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 5.625000953674316,
                        left: 5.712890625,
                        child: Container(
                            width: 34.27734375,
                            height: 33.75,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 34.27734375,
                                      height: 33.75,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 2)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                1.0252857370480475e-16,
                                                1.674418568611145),
                                            end: Alignment(-1.674418568611145,
                                                7.573026813935055e-15),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(231, 231, 231, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                34.27734375, 33.75)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(235, 235, 235, 1),
                                              Color.fromRGBO(255, 255, 255, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(65, 217, 250, 1),
                                              Color.fromRGBO(30, 182, 215, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 3.749988555908203,
                                  left: 3.80863094329834,
                                  child: Container(
                                      width: 26.660152435302734,
                                      height: 26.25000762939453,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 1)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(228, 228, 228, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                26.660152435302734,
                                                26.25000762939453)),
                                      ))),
                            ]))),
                    Positioned(
                        top: 16.630781173706055,
                        left: 19.04296112060547,
                        child: SvgPicture.asset('assets/images/vector41.svg',
                            semanticsLabel: 'vector41')),
                  ]))), // ???? 상자 안 원
          Positioned(
              top: 663,
              left: 136,
              child: Container(
                  width: 45.703125,
                  height: 45,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 5.625000953674316,
                        left: 5.712890625,
                        child: Container(
                            width: 34.27734375,
                            height: 33.75,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 34.27734375,
                                      height: 33.75,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 2)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                1.0252857370480475e-16,
                                                1.674418568611145),
                                            end: Alignment(-1.674418568611145,
                                                7.573026813935055e-15),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(231, 231, 231, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                34.27734375, 33.75)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(235, 235, 235, 1),
                                              Color.fromRGBO(255, 255, 255, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 2.8125,
                                  left: 2.8564453125,
                                  child: Container(
                                      width: 28.564453125,
                                      height: 28.125,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(65, 217, 250, 1),
                                              Color.fromRGBO(30, 182, 215, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                28.564453125, 28.125)),
                                      ))),
                              Positioned(
                                  top: 3.749988555908203,
                                  left: 3.80863094329834,
                                  child: Container(
                                      width: 26.660152435302734,
                                      height: 26.25000762939453,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.20000000298023224),
                                              offset: Offset(0, 1),
                                              blurRadius: 1)
                                        ],
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(255, 255, 255, 1),
                                              Color.fromRGBO(228, 228, 228, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                26.660152435302734,
                                                26.25000762939453)),
                                      ))),
                            ]))),
                    Positioned(
                        top: 16.630781173706055,
                        left: 19.04296112060547,
                        child: SvgPicture.asset('assets/images/vector41.svg',
                            semanticsLabel: 'vector41')),
                  ]))), // ???? 상자 안 원 2
          Positioned(
              top: 738,
              left: -1,
              child: Container(
                  width: 376,
                  height: 74,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(240, 240, 240, 1),
                  ))), // 하단부 박스
          Positioned(
              top: 750,
              left: -14,
              child: Container(
                  width: 154,
                  height: 56,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 62,
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 3.7501938343048096,
                                  left: 3.749999761581421,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                            ]))),
                    Positioned(
                        top: 28,
                        left: 0,
                        child: Text(
                          '검색',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(143, 143, 143, 1),
                              fontFamily: 'Noto Sans',
                              fontSize: 15,
                              letterSpacing: -0.23999999463558197,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                  ]))), // 검색 text
          Positioned(
              top: 750,
              left: 66,
              child: Container(
                  width: 237,
                  height: 56,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 145,
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0.6241044402122498,
                                  left: 0.6248228549957275,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                            ]))),
                    Positioned(
                        top: 25,
                        left: 83,
                        child: Text(
                          '트렌드',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(143, 143, 143, 1),
                              fontFamily: 'Noto Sans',
                              fontSize: 15,
                              letterSpacing: -0.23999999463558197,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                    Positioned(
                        top: 25,
                        left: 0,
                        child: Text(
                          '테마',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(125, 125, 125, 1),
                              fontFamily: 'Noto Sans',
                              fontSize: 15,
                              letterSpacing: -0.23999999463558197,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                  ]))), // 테마 트렌드 text
          Positioned(
              top: 778,
              left: 236,
              child: Text(
                '나의 쉼터',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(125, 125, 125, 1),
                    fontFamily: 'Noto Sans',
                    fontSize: 15,
                    letterSpacing: -0.23999999463558197,
                    fontWeight: FontWeight.normal,
                    height: 1.3333333333333333),
              )), // 나의 쉼터 text
          Positioned(
              top: 750,
              left: 298,
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 3.749866247177124,
                        left: 2.5,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                  ]))), // 불명
          Positioned(
              top: 750,
              left: 128,
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 5.000247955322266,
                        left: 5,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                  ]))), // 불명 2
          Positioned(
              top: 61,
              left: 37,
              child: Text(
                '이번 주 트렌드 둘러보기',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Noto Sans',
                    fontSize: 25,
                    letterSpacing: -0.23999999463558197,
                    fontWeight: FontWeight.normal,
                    height: 1.4),
              )), // 불명 3
        ]));
  }
}
