import 'package:doctor_app/core/widgets/login_header.dart';
import 'package:doctor_app/features/login/presentation/views/widgets/form_login.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [LoginHeader(), Gap(36), FormLogin()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
