import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "api_error.freezed.dart";

@freezed
class APIError with _$APIError {
  const factory APIError.invalidRequestError() = _invalidRequestError;

  const factory APIError.authorizationError() = _authorizationError;

  const factory APIError.internetSeverError() = _internetSeverError;

  const factory APIError.unknown() = _Unknown;
}

extension UserErrorAsync on APIError {
  AsyncValue<T> asASyncValue<T>() => when(
        invalidRequestError: () => const AsyncValue.error("Bad request"),
        authorizationError: () => const AsyncValue.error("authorizationError"),
        internetSeverError: () => const AsyncValue.error("internetSeverError"),
        unknown: () => const AsyncValue.error('Some error occurred'),
      );
}
