import 'package:client/generated/l10n.dart';

import 'user.dart';

class UserData {
  UserData({
    required this.email,
    required this.name,
    required this.picture,
  });

  factory UserData.from(UserInfo userInfo) {
    return UserData(
      email: userInfo.email,
      name: userInfo.name,
      picture: userInfo.picture,
    );
  }

  final String email;
  final String name;
  final String picture;
}
