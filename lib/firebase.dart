import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'firebaseQuery.dart';
import 'model.dart';
import 'Bloc.dart';

DatabaseReference userdb = new FirebaseDatabase().reference().child("user");
DatabaseReference trableDB = new FirebaseDatabase().reference().child("trable");

class fireBaseHomePage extends StatefulWidget {
  fireBaseHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  firebaseState createState() => firebaseState();
}

class firebaseState extends State<fireBaseHomePage> {

  var path = "test";

  @override
  Widget build(BuildContext context) {

    travel trave =  travel("군산에 가면","sjs0756","군산","인생샷","https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MjFfMTc2%2FMDAxNjI0MjgyNjg1NDE3.768xTwjcwD0xB33ntuqMrAdJitnLBKnV5GdtJbQkqVAg.NkV0lPCvW-DPH6DdHNkVrB4kFf6DY2dgz3PTKFapEncg.JPEG.ysh98n%2FIMG_3853.jpg&type=sc960_832","군산에서 인생샷 찰칵");

//travel에 아래 place를 여러번 넣어서 장소를 만듬
     var p1 = travelPlace("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMDFfNzgg%2FMDAxNjEyMTgxNTM0MzI2.p0n5tF8WVnfCJzb9v8zwrLR4ysN2G-k7AhVfNqvaGgMg.FCYWH2LEw9fF1GjZ-glwOeVc6aUmW22k1jEYKSwRcgEg.JPEG.ddm1763%2F_DSC0878.jpg&type=sc960_832",new LocationInMap("0", "0", "초원사진관"),"https://s3.us-west-2.amazonaws.com/secure.notion-static.com/934a79d8-cf57-4520-a0fd-5453ecbda6c6/%EC%95%84%EC%9D%B4%EC%9C%A0_-_%EB%AF%B8%EB%A6%AC_%EB%A9%94%EB%A6%AC_%ED%81%AC%EB%A6%AC%EC%8A%A4%EB%A7%88%EC%8A%A4.mp3?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20210818%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20210818T141615Z&X-Amz-Expires=86400&X-Amz-Signature=eb6d53f3d898e623e6025d5ee45fc43490de8524bab9d9ac2b54fdc9b1368e8a&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2520-%2520%25EB%25AF%25B8%25EB%25A6%25AC%2520%25EB%25A9%2594%25EB%25A6%25AC%2520%25ED%2581%25AC%25EB%25A6%25AC%25EC%258A%25A4%25EB%25A7%2588%25EC%258A%25A4.mp3%22","8월은 미리 메리 크리스마스");
    var p2 = travelPlace("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151014_114%2Flexerv_1444821901858ks7E2_JPEG%2F20140112_131309.jpg&type=sc960_832",new LocationInMap("10", "10", "신흥동 일본식가옥"),"https://s3.us-west-2.amazonaws.com/secure.notion-static.com/8f22795d-2393-4bb8-9dc9-a2edf44cc208/%EC%9C%A4%ED%95%98_-_Parade.mp3?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20210818%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20210818T141702Z&X-Amz-Expires=86400&X-Amz-Signature=ae930743bc8ebb35d1c5c47195b872fdf58fc531ce7904c9c69f6a6683c4d729&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22%25EC%259C%25A4%25ED%2595%2598%2520-%2520Parade.mp3%22","낯설지만 기분이 좋아");
    var p3 = travelPlace("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA1MDZfNDkg%2FMDAxNTU3MTI2NTYyMjky.sq-qTUR3F_ohdsI7I7uPIIuflcYolg-45SX2y7B4IW8g.Xci80bxkSuy9ImOUzVRw_l1je-dExj8QSiVlpt2b3wAg.JPEG.lechy%2FKakaoTalk_20190404_162442750.jpg&type=sc960_832",new LocationInMap("20", "20", "옛군산세관"),"https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d5b25566-74ca-4c25-b582-242ede70bfe8/%ED%81%AC%EB%9F%AC%EC%89%AC_-_%EC%9E%8A%EC%96%B4%EB%B2%84%EB%A6%AC%EC%A7%80%EB%A7%88.mp3?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20210818%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20210818T141713Z&X-Amz-Expires=86400&X-Amz-Signature=b7fa08193663daa8a6efedc324fc4e9cebcd01a8911b3b2198c83f38a919ae70&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22%25ED%2581%25AC%25EB%259F%25AC%25EC%2589%25AC%2520-%2520%25EC%259E%258A%25EC%2596%25B4%25EB%25B2%2584%25EB%25A6%25AC%25EC%25A7%2580%25EB%25A7%2588.mp3%22","아픈 역사 잊지않기");
    var p4 = travelPlace("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MjFfMTc2%2FMDAxNjI0MjgyNjg1NDE3.768xTwjcwD0xB33ntuqMrAdJitnLBKnV5GdtJbQkqVAg.NkV0lPCvW-DPH6DdHNkVrB4kFf6DY2dgz3PTKFapEncg.JPEG.ysh98n%2FIMG_3853.jpg&type=sc960_832",new LocationInMap("30", "30", "경암동 철길마을"),"https://s3.us-west-2.amazonaws.com/secure.notion-static.com/94432539-318f-405c-9eae-4f5541eebbc8/%EC%95%84%EC%9D%B4%EC%9C%A0_-_%EB%82%B4_%EC%86%90%EC%9D%84_%EC%9E%A1%EC%95%84.mp3?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20210818%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20210818T141731Z&X-Amz-Expires=86400&X-Amz-Signature=8932edebb4505787542e9e38660dc8693e8abefc871429976c9f9a5d890ffbc5&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22%25EC%2595%2584%25EC%259D%25B4%25EC%259C%25A0%2520-%2520%25EB%2582%25B4%2520%25EC%2586%2590%25EC%259D%2584%2520%25EC%259E%25A1%25EC%2595%2584.mp3%22","철길 위에서 두 손 꼭 잡고");

    // print("text");
    //   travel trave = new travel("jsuk10@naver.com",
    //       "Rea1water",
    //       "담양",
    //       "자연 속에서 힐링하기"
    //       ,"https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MjZfMjUz%2FMDAxNjIxOTc5MTIyNTky.pbsJRVw0M2jEXc8atKwiBn9d8oxBcJqSDUoYoyIi3SUg.adTUWtNI0DX3ErdUNPMgAH6QUouE0bowYdyVSMxJ95og.JPEG.wanderer6019%2FPicsArt%25A3%25DF05%25A3%25AD25%25A3%25AD07.18.25.jpg&type=sc960_832"
    //       ,"초록초록한 자연에서 리프레쉬");

      // var p1 =new  travelPlace("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MTlfNTkg%2FMDAxNjI2Njk4MzIyMTk1.efJnU9BZc1sxs8qB4Tv6BhDznAzWmv9sZ3IBE9sMufIg.M_xAmogbAiIK3u7lxjX1ZJcJwcEV-l3N9JXhpklhg_gg.JPEG.jennet_p%2Foutput_2030023050.jpg&type=sc960_832",
      //     new LocationInMap("0", "0", "소쇄원"),
      //     "https://www.youtube.com/watch?v=LTudX-OM7AI",
      //     "자연과 인공을 조화시킨 숲");
      // var p2 =new  travelPlace(
      //     "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MTBfMzgg%2FMDAxNjI1ODk0MTg4NDE2.POYoY9o1PBNeBoj0Ub4VnVSNxQHE8i2l6R2Nvsh74GUg.9v-iCoZpMbJYHKShispB9PAZ4gu1RFPoPuGaAmSB60Eg.JPEG.seulks9628%2FIMG_9614.JPG&type=sc960_832",
      //     new LocationInMap("10", "10", "죽녹원"),
      //     "https://www.youtube.com/watch?v=dXGHnRvDH0M",
      //     "대나무숲에서 힐링");
      // var p3 =new  travelPlace(
      //     "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA4MDlfMTY5%2FMDAxNjI4NDc5MTcxMjMz.9mZhpAqDaity8oUje-cZdpTToFHY8J4qTlZs0P3-jqog.E5R6XiqDDFAQp4bsZmk67WdkwEm2pT_OrthY1RkVlZIg.JPEG.parksw1004%2FIMG_7288.jpg&type=sc960_832",
      //     new LocationInMap("20", "20", "메타세쿼이아"),
      //     "https://www.youtube.com/watch?v=25ROFXjoaAU",
      //     "메타세쿼이아 길 드라이브");
      // var p4 =new  travelPlace(
      //     "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MDZfMjQ0%2FMDAxNjIwMjUzMzk1MTI5.VjixLtjBAJEiVcHDH-t2h-4rxiG5dtp6JdQeA-6vs9Yg.S9MsXbHXlsGeSo_jcJnH72blNId5blKJBMNxxBPpk_wg.JPEG.top_ki%2F0-0-0.jpg&type=sc960_832",
      //     new LocationInMap("30", "30", "관방제림"),
      //     "https://www.youtube.com/watch?v=OfG97e-4YXE",
      //     "관방제림에서 야경 감상");
      trave.addPlaceList(p1);
      trave.addPlaceList(p2);
      trave.addPlaceList(p3);
      trave.addPlaceList(p4);
      items.add(trave);
      print("prints ${trave}");
      insertTrableData(trave);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: trableDB.onValue,
              builder: (context, AsyncSnapshot<Event> snap){
                if(!snap.hasData) return Text("로딩");
                if(snap.data!.snapshot.value  == null) return Text("데이타없어~");
                List<Widget> widgetList = <Widget>[];
                Map<String, dynamic> mapOfMaps = Map<String, dynamic>.from(snap.data!.snapshot.value);
                mapOfMaps.entries.forEach((element) {
                  widgetList.add(Text(new travel.fromJson(element.value).toString()));
                });

                return Column(children: widgetList);
              },
            ),
            FlatButton(onPressed: () => {
                insertTrableData(trave),
            }, child: Text("insert")),
            FlatButton(onPressed: () => {
              // Read()
            }, child: Text("read")),
            FlatButton(onPressed: () => {
              UpdateTrableDataFromName(trave,"test1")
            }, child: Text("update")),
            FlatButton(onPressed: () => {
              DeleteTrableDataFromName("test1")
            }, child: Text("delete")),
            StreamBuilder(
              stream: ImageStreamController.stream,
              builder: (context, AsyncSnapshot<String> snap) {
                print('print ${snap.data}');
                return (snap.hasData)
                    ? Image.network(
                      snap.data!,
                      loadingBuilder: (context,child,progress) {
                        return progress == null ? child : CircularProgressIndicator();
                      },
                    )
                    : Text("이미지를 넣어주세요");;
              }),
            SizedBox(height: 20.0,),
            RaisedButton(
              child: Text('Upload Image'),
              color: Colors.lightBlue,
              onPressed: () => uploadImage(path),
            ),
          ],
        ),
      ),
    );
  }
}
