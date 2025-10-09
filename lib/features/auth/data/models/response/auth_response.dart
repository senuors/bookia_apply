/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

AuthResponse authResponseFromJson(String str) =>
    AuthResponse.fromJson(json.decode(str));

String authResponseToJson(AuthResponse data) => json.encode(data.toJson());

class AuthResponse {
  AuthResponse({
    required this.data,
    required this.message,
    required this.error,
    required this.status,
  });

  Data data;
  String message;
  List<dynamic> error;
  int status;

  factory AuthResponse.fromJson(Map<dynamic, dynamic> json) => AuthResponse(
    data: Data.fromJson(json["data"]),
    message: json["message"],
    error: List<dynamic>.from(json["error"].map((x) => x)),
    status: json["status"],
  );

  Map<dynamic, dynamic> toJson() => {
    "data": data.toJson(),
    "message": message,
    "error": List<dynamic>.from(error.map((x) => x)),
    "status": status,
  };
}

class Data {
  Data({required this.user, required this.token});

  User user;
  String token;

  factory Data.fromJson(Map<dynamic, dynamic> json) =>
      Data(user: User.fromJson(json["user"]), token: json["token"]);

  Map<dynamic, dynamic> toJson() => {"user": user.toJson(), "token": token};
}

class User {
  User({
    required this.image,
    required this.emailVerified,
    required this.name,
    required this.id,
    required this.email,
  });

  String image;
  bool emailVerified;
  String name;
  int id;
  String email;

  factory User.fromJson(Map<dynamic, dynamic> json) => User(
    image: json["image"],
    emailVerified: json["email_verified"],
    name: json["name"],
    id: json["id"],
    email: json["email"],
  );

  Map<dynamic, dynamic> toJson() => {
    "image": image,
    "email_verified": emailVerified,
    "name": name,
    "id": id,
    "email": email,
  };
}
