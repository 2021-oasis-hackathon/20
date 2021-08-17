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
    var test1 = travel("lee1","test1","test","test");
    var test2 = travel("lee2","test2","test","test");
    var test3 = travel("lee3","test3","test","test");
    var testupdate = travel("lee2","update","update","update");

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

                List<Widget> widgetList = <Widget>[];
                travel tr = new travel("1", "trableName", "location", "tema");
                Map<String, dynamic> mapOfMaps = Map<String, dynamic>.from(snap.data!.snapshot.value);
                mapOfMaps.entries.forEach((element) {
                  tr = new travel.fromJson(element.value);
                  widgetList.add(Text(tr.toString()));
                });

                return Column(children: widgetList);
              },
            ),
            FlatButton(onPressed: () => {
                insertTrableData(test1),
                insertTrableData(test2),
                insertTrableData(test3),
            }, child: Text("insert")),
            FlatButton(onPressed: () => {
              // Read()
            }, child: Text("read")),
            FlatButton(onPressed: () => {
              UpdateTrableDataFromName(testupdate,"test1")
            }, child: Text("update")),
            FlatButton(onPressed: () => {
              DeleteTrableDataFromName("test1")
            }, child: Text("delete")),
            StreamBuilder(
              stream: streamController.stream,
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
