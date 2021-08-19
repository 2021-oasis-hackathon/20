import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:funcoolsex/model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'Bloc.dart';

DatabaseReference userdb = new FirebaseDatabase().reference().child("user");
DatabaseReference trableDB = new FirebaseDatabase().reference().child("trable");

///user db를 얻는 매소드 Stream사용시 이용함
DatabaseReference getUserdb () => userdb;
///trable db를 얻는 매소드 Stream사용시 이용함
DatabaseReference getTrableDB () => trableDB;

///트레블을 업데이트 하는 함수, 있으면 덮어쓰기함.
void insertTrableData(travel trable) => trableDB.child(trable.toString()).set(trable.toJson());
// void insertTrable(trable trable) => trableDB.child(trable.toString()).set(trable.toJson());

///모든 travel 데이터를 읽어서 list로 반환
List<travel> ReadAllTrableDataToList(){
  List<travel> list = <travel>[];
  trableDB.once().then((var snapshot) {
    Map<String, dynamic> mapOfMaps = Map<String, dynamic>.from(snapshot.value);
    mapOfMaps.entries.forEach((element) {
      travel tr = new travel.fromJson(element.value);
      list.add(tr);
    });
  });
  return list;
}

/// 하나의 travel 데이터를 읽는 경우
travel? ReadOneTrableData(String travelString){
  trableDB.child(travelString).once().then((var snapshot) {
      var mapOfMaps = Map<String, dynamic>.from(snapshot.value);
      return new travel.fromJson(mapOfMaps);
    });
  return null;
}


///매칭되는 이름의 trable 데이터를 업데이트함
UpdateTrableDataFromName(travel trable, String name) {
  trableDB.child(name).update(trable.toJson());
}

///매칭되는 이름의 trable 데이터를 삭제
DeleteTrableDataFromName(String name) {
  trableDB.child(name).remove();
}
// void insertTrable(trable trable) => trableDB.child(trable.toString()).get(trable.toJson());

///유저를 넣는 함수
void insertUser(KakaoUser kakaoUser) => userdb.child(kakaoUser.toString()).set(kakaoUser.toJson());

///유저를 교체하는 함수
void updateUser(KakaoUser kakaoUser) => userdb.child(kakaoUser.name);

///이미지를 저장시켜주는 함수 path는 맞게 줘야함.
void uploadImage(String path) async {
  await Firebase.initializeApp();
  final _storage = FirebaseStorage.instance;
  final _picker = ImagePicker();
  PickedFile? image = null;
  //Check Permissions
  await Permission.photos.request();
  var permissionStatus = await Permission.photos.status;
  if (permissionStatus.isGranted){
    //Select Image
    image = await _picker.getImage(source: ImageSource.gallery);
    var file = File(image.path);
    if (image != null){
      //Upload to Firebase
      var snapshot = await _storage.ref()
          .child('image/${path}/${image}')
          .putFile(file)
          .snapshot;
      await Future.delayed(Duration(seconds: 2));
      var downloadUrl = await snapshot.ref.getDownloadURL();
      imageUrl = downloadUrl;
      ImageStreamController.add(imageUrl);
      print('save ${imageUrl}');
    } else {
      print('No Path Received');
    }
  } else {
    print('Grant Permissions and try again');
  }
}