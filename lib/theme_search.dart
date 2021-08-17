import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemesearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ThemesearchWidget - FRAME
    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 58,
                  left: 35,
                  child: Container(
                      width: 308,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(240, 240, 240, 1),
                      )
                  )
              ),
              Positioned(
                  top: 77,
                  left: 14,
                  child: Text(
                    '# 맛집', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.1111111111111112
                  ),)
              ),
              Positioned(
                  top: 76,
                  left: 299,
                  child: Container(
                      width: 24,
                      height: 23.998809814453125,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 1,
                                left: 1,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'
                                )
                            ),
                          ]
                      )
                  )
              ),
              Positioned(
                  top: 438,
                  left: 35,
                  child: Container(
                      width: 308,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4
                        )
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/Rectangle33.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 584,
                  left: 39,
                  child: Container(
                      width: 308,
                      height: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4
                        )
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/Rectangle34.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 516,
                  left: 53,
                  child: Text(
                    '후레쉬하게 회 한 점할라는디 같이 먹게잉', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Noto Sans',
                        fontSize: 18,
                        letterSpacing: -0.23999999463558197,
                        fontWeight: FontWeight.normal,
                        height: 1.2222222222222223
                    ),)
              ),
              Positioned(
                  top: 665,
                  left: 57,
                  child: Text('허벌나게 매운디 겁나 맛있어야', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Noto Sans',
                        fontSize: 18,
                        letterSpacing: -0.23999999463558197,
                        fontWeight: FontWeight.normal,
                        height: 1.2222222222222223
                    ),)
              ),
              Positioned(
                  top: 738,
                  left: -1,
                  child: Container(
                      width: 376,
                      height: 74,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(240, 240, 240, 1),
                      )
                  )
              ),
              Positioned(
                  top: 750,
                  left: 48,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 3.7501938343048096,
                                left: 3.749999761581421,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'
                                )
                            ),
                          ]
                      )
                  )
              ),
              Positioned(
                  top: 778,
                  left: -14,
                  child: Text(
                    '검색', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(143, 143, 143, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 15,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333
                  ),)
              ),
              Positioned(
                  top: 750,
                  left: 128,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 5.000247955322266,
                                left: 5,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'
                                )
                            ),
                          ]
                      )
                  )
              ),
              Positioned(
                  top: 778,
                  left: 66,
                  child: Text(
                    '테마', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(143, 143, 143, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 15,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333
                  ),)
              ),
              Positioned(
                  top: 750,
                  left: 211,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0.6241044402122498,
                                left: 0.6248228549957275,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'
                                )
                            ),
                          ]
                      )
                  )
              ),
              Positioned(
                  top: 778,
                  left: 149,
                  child: Text(
                    '트렌드', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(143, 143, 143, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 15,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333
                  ),)
              ),
              Positioned(
                  top: 750,
                  left: 298,
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 3.749866247177124,
                                left: 2.5,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'
                                )
                            ),
                          ]
                      )
                  )
              ),
              Positioned(
                  top: 778,
                  left: 236,
                  child: Text(
                    '나의 쉼터', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 15,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333
                  ),)
              ),
              Positioned(
                  top: 136,
                  left: 33,
                  child: Container(
                      width: 308,
                      height: 149,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4
                        )
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/Rectangle35.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 290,
                  left: 33,
                  child: Container(
                      width: 308,
                      height: 135,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4
                        )
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Rectangle2664.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 136,
                  left: 33,
                  child: Container(
                      width: 308,
                      height: 149,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4
                        )
                        ],
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Rectangle2665.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
              Positioned(
                  top: 249,
                  left: 49,
                  child: Text(
                    '여수 뷰 좋은 카페', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.2222222222222223
                  ),)
              ),
              Positioned(
                  top: 107,
                  left: 29,
                  child: Container(
                      width: 316,
                      height: 283,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(255, 255, 255, 1),
                      )
                  )
              ),
              Positioned(
                  top: 127,
                  left: 35,
                  child: Container(
                      width: 304,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(245, 245, 245, 1),
                      )
                  )
              ),
              Positioned(
                  top: 170,
                  left: 35,
                  child: Container(
                      width: 304,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(245, 245, 245, 1),
                      )
                  )
              ),
              Positioned(
                  top: 213,
                  left: 35,
                  child: Container(
                      width: 304,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(245, 245, 245, 1),
                      )
                  )
              ),
              Positioned(
                  top: 256,
                  left: 35,
                  child: Container(
                      width: 304,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(245, 245, 245, 1),
                      )
                  )
              ),
              Positioned(
                  top: 299,
                  left: 35,
                  child: Container(
                      width: 304,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(245, 245, 245, 1),
                      )
                  )
              ),
              Positioned(
                  top: 342,
                  left: 35,
                  child: Container(
                      width: 304,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 2),
                            blurRadius: 4
                        )
                        ],
                        color: Color.fromRGBO(245, 245, 245, 1),
                      )
                  )
              ),
              Positioned(
                  top: 137,
                  left: 73,
                  child: Text('# 자연 속에서 힐링하기', textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(125, 125, 125, 1),
                        fontFamily: 'Noto Sans',
                        fontSize: 18,
                        letterSpacing: -0.23999999463558197,
                        fontWeight: FontWeight.normal,
                        height: 1.1111111111111112
                    ),)
              ),
              Positioned(
                  top: 177,
                  left: 73,
                  child: Text(
                    '# 데이트', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.1111111111111112
                  ),)
              ),
              Positioned(
                  top: 220,
                  left: 73,
                  child: Text(
                    '# 인생샷', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.1111111111111112
                  ),)
              ),
              Positioned(
                  top: 263,
                  left: 73,
                  child: Text(
                    '# 문화예술', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.1111111111111112
                  ),)
              ),
              Positioned(
                  top: 306,
                  left: 73,
                  child: Text(
                    '# 드라이브 코스', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.1111111111111112
                  ),)
              ),
              Positioned(
                  top: 349,
                  left: 73,
                  child: Text(
                    '# 가족과 함께', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(125, 125, 125, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.1111111111111112
                  ),)
              ),
              Positioned(
                  top: 373,
                  left: 49,
                  child: Text(
                    '음식은 전라도제 ', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Noto Sans',
                      fontSize: 16,
                      letterSpacing: -0.23999999463558197,
                      fontWeight: FontWeight.normal,
                      height: 1.375
                  ),)
              ),
            ]
        )
    );
  }
}
