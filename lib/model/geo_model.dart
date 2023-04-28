class GeoModel {
  String lat;
  String lng;

  GeoModel({required this.lat, required this.lng});

  factory GeoModel.fromMap(Map<String, dynamic> map) {
    return GeoModel(lat: map["lat"], lng: map["lng"]);
  }
}
