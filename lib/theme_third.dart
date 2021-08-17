import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Theme3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Theme3Widget - FRAME
    return Container(
      width: 375,
      height: 812,
      decoration: BoxDecoration(
        color : Color.fromRGBO(255, 255, 255, 1),
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
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow : [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0,4),
                    blurRadius: 4
                )],
                color : Color.fromRGBO(240, 240, 240, 1),
              )
          )
      ),Positioned(
        top: 77,
        left: 14,
        child: Text('# 인생샷', textAlign: TextAlign.center, style: TextStyle(
            color: Color.fromRGBO(125, 125, 125, 1),
            fontFamily: 'Noto Sans',
            fontSize: 18,
            letterSpacing: -0.23999999463558197,
            fontWeight: FontWeight.normal,
            height: 1.1111111111111112
        ),)
    ),Positioned(
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
    ),Positioned(
        top: 142,
        left: 33,
        child: Container(
            width: 308,
            height: 136,
            decoration: BoxDecoration(
              borderRadius : BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow : [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0,4),
                  blurRadius: 4
              )],
              image : DecorationImage(
                  image: AssetImage('assets/images/Rectangle36.png'),
                  fit: BoxFit.fitWidth
              ),
            )
        )
    ),Positioned(
        top: 225,
        left: 49,
        child: Text('돗자리 착 펴놓고 놀믄 여가 천국이여', textAlign: TextAlign.left, style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Noto Sans',
        fontSize: 16,
        letterSpacing: -0.23999999463558197,
        fontWeight: FontWeight.normal,
        height: 1.375
    ),)
    ),Positioned(
    top: 290,
    left: 33,
    child: Container(
    width: 308,
    height: 136,
    decoration: BoxDecoration(
    borderRadius : BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
    ),
    boxShadow : [BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(0,4),
    blurRadius: 4
    )],
    image : DecorationImage(
    image: AssetImage('assets/images/Rectangle31.png'),
    fit: BoxFit.fitWidth
    ),
    )
    )
    ),Positioned(
    top: 390,
    left: 48,
    child: Text('바다랑 철길 안 보고 갈껴?', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'Noto Sans',
    fontSize: 16,
    letterSpacing: -0.23999999463558197,
    fontWeight: FontWeight.normal,
    height: 1.375
    ),)
    ),Positioned(
    top: 436,
    left: 34,
    child: Container(
    width: 308,
    height: 135,
    decoration: BoxDecoration(
    borderRadius : BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
    ),
    boxShadow : [BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(0,4),
    blurRadius: 4
    )],
    image : DecorationImage(
    image: AssetImage('assets/images/Rectangle35.png'),
    fit: BoxFit.fitWidth
    ),
    )
    )
    ),Positioned(
    top: 522,
    left: 48,
    child: Text('숨 깔딱깔딱 넘어가는디 풍경은 기가 막혀부러 ', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'Noto Sans',
    fontSize: 16,
    letterSpacing: -0.23999999463558197,
    fontWeight: FontWeight.normal,
    height: 1.25
    ),)
    ),Positioned(
    top: 584,
    left: 35,
    child: Container(
    width: 308,
    height: 136,
    decoration: BoxDecoration(
    borderRadius : BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
    ),
    boxShadow : [BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(0,4),
    blurRadius: 4
    )],
    image : DecorationImage(
    image: AssetImage('assets/images/Rectangle33.png'),
    fit: BoxFit.fitWidth
    ),
    )
    )
    ),Positioned(
    top: 661,
    left: 48,
    child: Text('여까지 왔는디 사진 한 장 건져가쇼잉', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'Noto Sans',
    fontSize: 16,
    letterSpacing: -0.23999999463558197,
    fontWeight: FontWeight.normal,
    height: 1.375
    ),)
    ),Positioned(
    top: 738,
    left: -1,
    child: Container(
    width: 376,
    height: 74,
    decoration: BoxDecoration(
    color : Color.fromRGBO(240, 240, 240, 1),
    )
    )
    ),Positioned(
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
    ),Positioned(
    top: 778,
    left: -14,
    child: Text('검색', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(143, 143, 143, 1),
    fontFamily: 'Noto Sans',
    fontSize: 15,
    letterSpacing: -0.23999999463558197,
    fontWeight: FontWeight.normal,
    height: 1.3333333333333333
    ),)
    ),Positioned(
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
    ),Positioned(
    top: 778,
    left: 66,
    child: Text('테마', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(143, 143, 143, 1),
    fontFamily: 'Noto Sans',
    fontSize: 15,
    letterSpacing: -0.23999999463558197,
    fontWeight: FontWeight.normal,
    height: 1.3333333333333333
    ),)
    ),Positioned(
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
    ),Positioned(
    top: 778,
    left: 149,
    child: Text('트렌드', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(143, 143, 143, 1),
    fontFamily: 'Noto Sans',
    fontSize: 15,
    letterSpacing: -0.23999999463558197,
    fontWeight: FontWeight.normal,
    height: 1.3333333333333333
    ),)
    ),Positioned(
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
    ),Positioned(
    top: 778,
    left: 236,
    child: Text('나의 쉼터', textAlign: TextAlign.center, style: TextStyle(
    color: Color.fromRGBO(125, 125, 125, 1),
    fontFamily: 'Noto Sans',
    fontSize: 15,
    letterSpacing: -0.23999999463558197,
    fontWeight: FontWeight.normal,
    height: 1.3333333333333333
    ),)
    ),
    ]
    )
    );
  }
}
