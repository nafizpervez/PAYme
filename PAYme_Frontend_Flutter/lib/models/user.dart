import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.mid,
    required this.tid,
    required this.location,
    required this.avatar,
    required this.contactNumber,
  });

  String id;
  String name;
  String email;
  String mid;
  String tid;
  String location;
  String? avatar;
  String contactNumber;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["attributes"]["name"],
        email: json["attributes"]["email"],
        mid: json["attributes"]["mid"],
        tid: json["attributes"]["tid"],
        location: json["attributes"]["location"],
        avatar: json["attributes"]["avatar"],
        contactNumber: json["attributes"]["contact_number"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mid": mid,
        "tid": tid,
        "location": location,
        "avatar": avatar,
        "contact_number": contactNumber,
      };
}
