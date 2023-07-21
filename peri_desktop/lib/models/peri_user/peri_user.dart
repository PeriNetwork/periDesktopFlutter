// To parse this JSON data, do
//
//     final periUser = periUserFromJson(jsonString);

import 'dart:convert';

List<PeriUser> periUserFromJson(String str) => List<PeriUser>.from(json.decode(str).map((x) => PeriUser.fromJson(x)));

String periUserToJson(List<PeriUser> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PeriUser {
    int nFollowers;
    bool active;
    int id;
    String name;
    String email;
    String password;
    DateTime birthDate;
    DateTime createdAt;

    PeriUser({
        required this.nFollowers,
        required this.active,
        required this.id,
        required this.name,
        required this.email,
        required this.password,
        required this.birthDate,
        required this.createdAt,
    });

    factory PeriUser.fromJson(Map<String, dynamic> json) => PeriUser(
        nFollowers: json["nFollowers"],
        active: json["active"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        birthDate: DateTime.parse(json["birth_date"]),
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "nFollowers": nFollowers,
        "active": active,
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "birth_date": birthDate.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
    };
}
