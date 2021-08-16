import 'dart:convert';

//유저 정보를 담고 있는 클래스
class user {
  dynamic id;
  dynamic name;
  dynamic imageURL;

  String toString() => name;


  fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageURL = json['imageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['imageURL'] = this.imageURL;
    return data;
  }

  user(this.id, this.name, this.imageURL);
}

//여행 테마를 가진 클래스
//trable을 list에 넣어주는 함수 생성해야함
//review를 list에 넣어주는 함수 생성해야함.
class travel {
  //여행의 이름 (key)
  dynamic travelName;
  //여행을 만든 사람 ID
  dynamic owner;
  //지역
  dynamic location;
  //테마
  dynamic theme;
  //평균 평점
  dynamic totalRating;
  //각각 가리고 있는 장소 정보, 리뷰 리스트
  late List<place> placeList;
  late List<review> reviewList;

  addPlaceList(place item){
    placeList.add(item);
  }

  addReviewList(review item){
    reviewList.add(item);
  }

  //여행 생성자
  travel(this.owner, this.travelName, this.location, this.theme){
    totalRating = 0;
    placeList = <place>[];
    reviewList = <review>[];
  }

  travel.fromJson(Map<dynamic, dynamic> json) {
     this.travelName = json['trableName'];
     this.owner = json['owner'];
     this.location = json['location'];
     this.theme = json['tema'];
     this.totalRating = json['totalRating'];
     this.placeList = json['placeList'];
     this.reviewList = json['reviewList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    Map<String, dynamic> reviewListMap = new Map<String, dynamic>();
    Map<String, dynamic> placeListMap = new Map<String, dynamic>();
    data['trableName'] = this.travelName;
    data['owner'] = this.owner;
    data['location'] = this.location;
    data['tema'] = this.theme;
    data['totalRating'] = this.totalRating;

    for(int i= 0 ;i <placeList.length;i++) {
      placeListMap['place${i+1}'] = placeList[i].toJson();
    }

    data['placeList'] = placeListMap;

    for(int i= 0 ;i <reviewList.length;i++) {
      reviewListMap['review${i+1}'] = reviewList[i].toJson();
    }

    data['reviewList'] = reviewListMap;

    return data;
  }

  String toString() => travelName;

}

//각각의 여행정보를 담은 클래스
class place {
  //여행 대표 이미지 (key)
  dynamic imageURL;
  //여행 이름
  dynamic name;
  //여행 추천 음악
  dynamic musicURL;
  //장소에 대한 위치 URL? => 차후 수정
  dynamic spotURL;
  //장소 설명
  dynamic explanation;

  place(this.name, this.imageURL, this.musicURL, this.spotURL, this.explanation);

  String toString() => name;
  String toListItem() => '{ ${this.name}, ${this.imageURL}, ${this.musicURL}, ${this.spotURL}, ${this.explanation}, }';


  fromJson(Map<dynamic, dynamic> json) {
    imageURL = json['imageURL'];
    name = json['name'];
    musicURL = json['musicURL'];
    spotURL = json['spotURL'];
    explanation = json['explanation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageURL'] = this.imageURL;
    data['name'] = this.name;
    data['musicURL'] = this.musicURL;
    data['spotURL'] = this.spotURL;
    data['explanation'] = this.explanation;
    return data;
  }
}

//별점과 후기를 가진 클래스
class review {
  //사용자가 준 별점
  dynamic rating;
  //리뷰
  dynamic reviewString;

  String toString() => reviewString;

  fromJson(Map<dynamic, dynamic> json) {
    rating = json['rating'];
    reviewString = json['reviewString'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['reviewString'] = this.reviewString;
    return data;
  }

  review(this.rating, this.reviewString);
}

