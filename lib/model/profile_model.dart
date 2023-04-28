import 'package:profile_app/model/address_model.dart';
import 'package:profile_app/model/company_model.dart';

class ProfileModel {
  int id;
  String name;
  String username;
  String email;
  AddressModel address;
  String phone;
  String website;
  CompanyModel company;

  ProfileModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
        id: map["id"],
        name: map["name"],
        username: map["username"],
        email: map["email"],
        address: AddressModel.fromMap(map["address"]),
        phone: map["phone"],
        website: map["website"],
        company: CompanyModel.fromMap(map["company"]));
  }
}
