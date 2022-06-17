// import 'package:flutter/foundation.dart';

class LoginResponse {
  bool? sucess;
  String? token;

  LoginResponse({this.sucess, this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      LoginResponse(sucess: json["sucess"], token: json["token"]);

  Map<String, dynamic> toJson() => {
        "sucess": sucess,
        "token": token,
      };
}
