import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/images/app_logo_low_opacity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.0, 0.5],
              colors: [AppColors.white, AppColors.white.withValues(alpha: 0.0)],
            ),
          ),
          child: Image.asset('assets/images/on_boarding_doctor.png'),
        ),
        Positioned(
          bottom: 12.h,
          left: 32.w,
          right: 32.w,
          child: Text(
            'Best Doctor\nAppointment App',
            style: AppTextStyles.font32Blue700,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
