import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static Dio? _dio;
  DioFactory._();
  static Dio getDio() {
    if (_dio == null) {
      _dio ??= Dio(
        BaseOptions(
          baseUrl: ApiConstants.apiBaseURL,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
        ),
      );
      _addDioInterceptors();
    }
    return _dio!;
  }

  static void _addDioInterceptors() {
    _dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
