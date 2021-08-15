import 'package:firebase_database/firebase_database.dart';
import 'package:funcoolsex/model.dart';

DatabaseReference userdb = new FirebaseDatabase().reference().child("user");
DatabaseReference trableDB = new FirebaseDatabase().reference().child("trable").child("path");

///user db를 얻는 매소드 Stream사용시 이용함
DatabaseReference getUserdb () => userdb;
///trable db를 얻는 매소드 Stream사용시 이용함
DatabaseReference getTrableDB () => trableDB;

///트레블을 업데이트 하는 함수, 있으면 덮어쓰기함.
void insertTrable(trable trable) => trableDB.child(trable.toString()).set(trable.toJson());
// void insertTrable(trable trable) => trableDB.child(trable.toString()).set(trable.toJson());

///모든 데이터를 읽음
void Read(String trable) async{
  trableDB.once().then((var snapshot) {
      print(snapshot.value);
    });
  // print('Data : ${snapshot.value}');
}

// getData() async {
//   final FirebaseUser user = await _firebaseAuth.currentUser();
//   return await FirebaseDatabase.instance.reference().child('user').equalTo(user.uid);
// }

///업데이트함
Update(trable trable, String tragetname) {
  trableDB.child(tragetname).update(trable.toJson());
}

///삭제
Delete(String name) {
  trableDB.child(name).remove();
}
// void insertTrable(trable trable) => trableDB.child(trable.toString()).get(trable.toJson());

///유저를 넣는 함수
void insertUser(user user) => userdb.child(user.toString()).set(user.toJson());

///유저를 교체하는 함수
void updateUser(user user) => userdb.child(user.name);

///
///
///
var databaseReference = trableDB;
void createData(){
  databaseReference.child("flutterDevsTeam1").set({
    'name': 'Deepak Nishad',
    'description': 'Team Lead'
  });
  databaseReference.child("flutterDevsTeam2").set({
    'name': 'Yashwant Kumar',
    'description': 'Senior Software Engineer'
  });
  databaseReference.child("flutterDevsTeam3").set({
    'name': 'Akshay',
    'description': 'Software Engineer'
  });
  databaseReference.child("flutterDevsTeam4").set({
    'name': 'Aditya',
    'description': 'Software Engineer'
  });
  databaseReference.child("flutterDevsTeam5").set({
    'name': 'Shaiq',
    'description': 'Associate Software Engineer'
  });
  databaseReference.child("flutterDevsTeam6").set({
    'name': 'Mohit',
    'description': 'Associate Software Engineer'
  });
  databaseReference.child("flutterDevsTeam7").set({
    'name': 'Naveen',
    'description': 'Associate Software Engineer'
  });

}
void readData(){
  databaseReference.once().then((DataSnapshot snapshot) {
    print('Data : ${snapshot.value}');
  });
}

void updateData(){
  databaseReference.child('flutterDevsTeam1').update({
    'description': 'CEO'
  });
  databaseReference.child('flutterDevsTeam2').update({
    'description': 'Team Lead'
  });
  databaseReference.child('flutterDevsTeam3').update({
    'description': 'Senior Software Engineer'
  });
}

void deleteData(){
  databaseReference.child('flutterDevsTeam1').remove();
  databaseReference.child('flutterDevsTeam2').remove();
  databaseReference.child('flutterDevsTeam3').remove();
}
