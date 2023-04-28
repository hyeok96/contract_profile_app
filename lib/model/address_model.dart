import 'geo_model.dart';

class AddressModel {
  String street;
  String suite;
  String city;
  String zipcode;
  GeoModel geo;

  AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      street: map["street"],
      suite: map['suite'],
      city: map["city"],
      zipcode: map['zipcode'],
      geo: GeoModel.fromMap(map['geo']),
    );
  }
}
