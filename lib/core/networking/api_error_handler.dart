import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler implements Exception {
  static ApiErrorModel handle(dynamic err) {
    if (err is DioException) {
      switch (err.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'Connection to server failed');
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection timeout with server');
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'Send timeout with server');
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'Receive timeout with server');
        case DioExceptionType.badResponse:
          return _handleError(err);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request to server was cancelled');
        case DioExceptionType.badCertificate:
          return ApiErrorModel(message: 'Bad certificate');
        default:
          return ApiErrorModel(message: 'Unexpected error occurred');
      }
    } else {
      return ApiErrorModel(message: 'Unexpected error occurred');
    }
  }
}

ApiErrorModel _handleError(DioException err) {
  return ApiErrorModel(
    code: err.response?.statusCode,
    message: err.response?.data['message'] ?? 'Unknown error occurred',
  );
}
