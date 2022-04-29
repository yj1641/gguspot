// ignore_for_file: file_names

enum PlaceCategory { 
  restaurant,
  cafe,
  beer,
  hot,
  brunch,
  travel
}

class Place {
  PlaceCategory category;
  String name;
  String address;
  String distance;
  String createdAt;
  String image;
  double latitude;
  double longitude;

  Place({
    required this.category,
    required this.name,
    required this.address,
    required this.distance,
    required this.createdAt,
    required this.image,
    required this.latitude,
    required this.longitude
  });

  // 샘플 데이터
  static List<Place> placeList = [
    Place(category: PlaceCategory.restaurant 
        , name: "뿌뿌 식당"
        , address: "서울시 성동구 아차산로 49 서울숲코오롱 타워 1704호"
        , distance: "1 km"
        , image: "restaurant.png"
        , createdAt: "2022-04-01"
        , latitude: 102.0000
        , longitude: 10.0000),
    Place(category: PlaceCategory.cafe 
        , name: "뿌뿌 카페"
        , address: "서울시 성동구 아차산로 49 서울숲코오롱 타워"
        , distance: "1 km"
        , image: "cafe.png"
        , createdAt: "2022-04-01"
        , latitude: 102.0000
        , longitude: 10.0000),
    Place(category: PlaceCategory.beer 
        , name: "뿌뿌 맥주"
        , address: "서울시 성동구 아차산로 49 서울숲코오롱 타워"
        , distance: "1 km"
        , image: "beer.png"
        , createdAt: "2022-04-01"
        , latitude: 102.0000
        , longitude: 10.0000),
    Place(category: PlaceCategory.hot 
        , name: "뿌뿌 핫플"
        , address: "서울시 성동구 아차산로 49 서울숲코오롱 타워"
        , distance: "1 km"
        , image: "hot.png"
        , createdAt: "2022-04-01"
        , latitude: 102.0000
        , longitude: 10.0000),
    Place(category: PlaceCategory.brunch 
        , name: "뿌뿌 브런치"
        , address: "서울시 성동구 아차산로 49 서울숲코오롱 타워"
        , distance: "1 km"
        , image: "brunch.png"
        , createdAt: "2022-04-01"
        , latitude: 102.0000
        , longitude: 10.0000),
    Place(category: PlaceCategory.travel 
        , name: "뿌뿌  첨성대"
        , address: "서울시 성동구 아차산로 49 서울숲코오롱 타워"
        , distance: "1 km"
        , image: "travel.png"
        , createdAt: "2022-04-01"
        , latitude: 102.0000
        , longitude: 10.0000)
  ];
}