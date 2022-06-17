class User {
  String? email;
  String? address;
  String? username;
  String? password;

  User({
    this.email,
    this.address,
    this.username,
    this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        address: json["address"],
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "address": address,
        "username": username,
        "password": password,
      };
}
