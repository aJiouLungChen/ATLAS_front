import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part "user.g.dart";

@freezed
class UserInfo with _$UserInfo{
  factory UserInfo({
    @JsonKey(name:"email") required String email,
    @JsonKey(name:"name") required String name,
    @JsonKey(name:"picture") required String picture,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}
