import 'dart:convert';
import 'package:client/src/data/model/user/user.dart';
import 'package:client/src/data/model/user/user_data.dart';
import 'package:client/src/data/repositories/api_error.dart';
import 'package:client/src/data/repositories/user_repository.dart';
import 'package:client/src/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class UserInfoProvider extends StateNotifier<AsyncValue<UserData>> {
  UserInfoProvider(this._userInfoRepository, {required this.authCode})
      : super(const AsyncValue.loading()) {
    getUserInfo(authCode: authCode);
  }

  final HttpUserRepository _userInfoRepository;
  final String authCode;

  Future<void> getUserInfo({required String authCode}) async {
    try {
      state = const AsyncValue.loading();
      final userInfo =
          await _userInfoRepository.getUserInfo(authCode: authCode);
      state = AsyncValue.data(UserData.from(userInfo));
    } on APIError catch (e) {
      state = e.asASyncValue();
    }
  }
}

final userInfoControllerProvider =
    StateNotifierProvider.autoDispose<UserInfoProvider, AsyncValue<UserData>>(
        (ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  final authCode = ref.watch(authCodeProvider);
  return UserInfoProvider(userRepository, authCode: authCode);
});
