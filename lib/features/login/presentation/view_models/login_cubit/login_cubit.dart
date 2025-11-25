import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/login/data/models/login_request_model/login_request_model.dart';
import 'package:doctor_app/features/login/data/models/login_response_model/login_response_model.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit({required LoginRepo loginRepo})
    : _loginRepo = loginRepo,
      super(const LoginState.initial());

  Future<void> login(LoginRequestModel loginRequestModel) async {
    emit(const LoginState.loading());

    final result = await _loginRepo.login(loginRequestModel);

    result.fold(
      (failure) {
        emit(LoginState.failure(errMsg: failure.message));
      },
      (loginResponseModel) {
        emit(LoginState.success(response: loginResponseModel));
      },
    );
  }
}
