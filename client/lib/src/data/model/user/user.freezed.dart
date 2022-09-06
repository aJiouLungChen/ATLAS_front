// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
class _$UserInfoTearOff {
  const _$UserInfoTearOff();

  _UserInfo call(
      {@JsonKey(name: "email") required String email,
      @JsonKey(name: "name") required String name,
      @JsonKey(name: "picture") required String picture}) {
    return _UserInfo(
      email: email,
      name: name,
      picture: picture,
    );
  }

  UserInfo fromJson(Map<String, Object?> json) {
    return UserInfo.fromJson(json);
  }
}

/// @nodoc
const $UserInfo = _$UserInfoTearOff();

/// @nodoc
mixin _$UserInfo {
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "picture")
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "picture") String picture});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res> implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  final UserInfo _value;
  // ignore: unused_field
  final $Res Function(UserInfo) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) then) =
      __$UserInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "email") String email,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "picture") String picture});
}

/// @nodoc
class __$UserInfoCopyWithImpl<$Res> extends _$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(_UserInfo _value, $Res Function(_UserInfo) _then)
      : super(_value, (v) => _then(v as _UserInfo));

  @override
  _UserInfo get _value => super._value as _UserInfo;

  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
    Object? picture = freezed,
  }) {
    return _then(_UserInfo(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfo implements _UserInfo {
  _$_UserInfo(
      {@JsonKey(name: "email") required this.email,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "picture") required this.picture});

  factory _$_UserInfo.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoFromJson(json);

  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "picture")
  final String picture;

  @override
  String toString() {
    return 'UserInfo(email: $email, name: $name, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfo &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoToJson(this);
  }
}

abstract class _UserInfo implements UserInfo {
  factory _UserInfo(
      {@JsonKey(name: "email") required String email,
      @JsonKey(name: "name") required String name,
      @JsonKey(name: "picture") required String picture}) = _$_UserInfo;

  factory _UserInfo.fromJson(Map<String, dynamic> json) = _$_UserInfo.fromJson;

  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "picture")
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
