class UserInfo {
  UserInfo({required this.email, required this.name, required this.picture});

  factory UserInfo.fromjson(Map<String, dynamic> json) => UserInfo(
        email: json["email"],
        name: json["name"],
        picture: json["picture"],
      );

  final String email;
  final String name;
  final String picture;
  //a
}
