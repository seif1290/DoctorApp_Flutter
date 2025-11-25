import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:doctor_app/features/login/presentation/views/widgets/footer_login.dart';
import 'package:doctor_app/features/login/presentation/views/widgets/header_login.dart';
import 'package:doctor_app/features/login/presentation/views/widgets/form_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (message) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
          success: (loginResponseModel) {
            context.pushNamedAndRemoveUntil(
              Routes.homeView,
              predicate: (route) => false,
            );
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HeaderLogin(),
                        Gap(36),
                        FormLogin(),
                        Gap(32),
                        FooterLogin(),
                      ],
                    ),
                  ),
                ),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return state.whenOrNull(
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                        ) ??
                        const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
