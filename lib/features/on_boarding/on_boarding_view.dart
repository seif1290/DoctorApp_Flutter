import 'package:doctor_app/core/helpers/extensions.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/on_boarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/on_boarding/widgets/doctor_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Column(
              children: [
                const DoctorLogoAndName(),
                Gap(18.h),

                const DoctorImageAndText(),
                Gap(18.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: AppTextStyles.font12Grey400,
                    textAlign: TextAlign.center,
                  ),
                ),
                Gap(18.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushReplacementNamed(Routes.loginView);
                    },
                    child: const Text('Get Started'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
