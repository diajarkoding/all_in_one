// To parse this JSON data, do
//
//     final userIndex = userIndexFromJson(jsonString);

import 'dart:convert';

UserIndex userIndexFromJson(String str) => UserIndex.fromJson(json.decode(str));

String userIndexToJson(UserIndex data) => json.encode(data.toJson());

class UserIndex {
  UserIndex({
    this.data,
  });

  List<UserDetail>? data;

  factory UserIndex.fromJson(Map<String, dynamic> json) => UserIndex(
        data: List<UserDetail>.from(
            json["data"].map((x) => UserDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class UserDetail {
  UserDetail({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
