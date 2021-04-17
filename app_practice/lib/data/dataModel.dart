import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.company,
  });

  int id;
  String name;
  String email;
  Company company;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "company": company.toJson(),
      };
}

class Company {
  Company({
    this.name,
  });

  String name;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
