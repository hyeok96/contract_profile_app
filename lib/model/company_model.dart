class CompanyModel {
  String name;
  String catchPhrase;
  String bs;

  CompanyModel(
      {required this.name, required this.catchPhrase, required this.bs});

  factory CompanyModel.fromMap(Map<String, dynamic> map) {
    return CompanyModel(
      name: map["name"],
      catchPhrase: map["catchPhrase"],
      bs: map["bs"],
    );
  }
}
