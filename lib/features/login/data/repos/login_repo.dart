import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_error_model.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_app/features/login/data/models/login_request_model/login_request_model.dart';
import 'package:doctor_app/features/login/data/models/login_response_model/login_response_model.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo({required ApiService apiService}) : _apiService = apiService;

  Future<Either<ApiErrorModel, LoginResponseModel>> login(
    LoginRequestModel requestModel,
  ) async {
    try {
      final response = await _apiService.login(requestModel);
      return Right(response);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }
}
