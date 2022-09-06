import 'dart:convert';
import 'dart:io';
import 'package:client/src/api/api_service.dart';
import 'package:client/src/api/api_keys.dart';
import 'package:client/src/data/model/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'api_error.dart';

class HttpUserRepository {
  HttpUserRepository({required this.api, required this.client});

  final ApiService api;
  final http.Client client;

  Future<UserInfo> getUserInfo({required String authCode}) => _getData(
        uri: api.signin(authCode),
        builder: (data) => UserInfo.fromJson(data),
      );

  //Future<UserInfo> signIn({required String authCode});

  Future<T> _getData<T>({
    required Uri uri,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final response = await client.get(uri);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body)["body"];
          return builder(data);
        case 400:
          throw const APIError.invalidRequestError();
        case 401:
          throw const APIError.authorizationError();
        default:
          throw const APIError.unknown();
      }
    } on SocketException catch (_) {
      throw const APIError.internetSeverError();
    }
  }
}

final userRepositoryProvider = Provider<HttpUserRepository>((ref){
  /// Use the API key passed via --dart-define,
  /// or fallback to the one defined in api_keys.dart
  // set key to const
  const apiKey = String.fromEnvironment(
    'API_KEY',
    defaultValue: APIKeys.getUserInfoAPIKey,
  );
  return HttpUserRepository(
    api: ApiService(apiKey),
    client: http.Client(),
  );
});
