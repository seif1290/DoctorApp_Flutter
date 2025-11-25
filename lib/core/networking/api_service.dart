import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:doctor_app/features/login/data/models/login_request_model/login_request_model.dart';
import 'package:doctor_app/features/login/data/models/login_response_model/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(@Body() LoginRequestModel modelRequestModel);
}
