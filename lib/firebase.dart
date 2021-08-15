import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'firebaseQuery.dart';
import 'model.dart';

DatabaseReference userdb = new FirebaseDatabase().reference().child("user");
DatabaseReference trableDB = new FirebaseDatabase().reference().child("trable");

class fireBaseHomePage extends StatefulWidget {
  fireBaseHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  firebaseState createState() => firebaseState();
}

class firebaseState extends State<fireBaseHomePage> {

  @override
  Widget build(BuildContext context) {
    var test1 = trable("lee1","test1","test","test");
    var test2 = trable("lee2","test2","test","test");
    var test3 = trable("lee3","test3","test","test");
    var testupdate = trable("lee2","update","update","update");

    var placeItem = place("name", "imageURL", "musicURL", "spotURL", "explanation");
    var reviewItem = review("rating", "reviewString");

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
                return Text(snap.data!.snapshot.value.toString());
              },
            ),
            FlatButton(onPressed: () => {
                insertTrable(test1),
                insertTrable(test2),
                insertTrable(test3),
            }, child: Text("insert")),
            FlatButton(onPressed: () => {
              Read("test")
            }, child: Text("read")),
            FlatButton(onPressed: () => {
              Update(testupdate,"test1")
            }, child: Text("update")),
            FlatButton(onPressed: () => {
              Delete("tests")
            }, child: Text("delete"))
          ],
        ),
      ),
    );
  }

}

