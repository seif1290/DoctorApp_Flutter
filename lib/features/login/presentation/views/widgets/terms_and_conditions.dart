import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: AppTextStyles.font12Grey400,
          ),
          TextSpan(
            text: 'Terms & Conditions ',
            style: AppTextStyles.font12Grey400.copyWith(color: AppColors.black),
          ),
          TextSpan(text: 'and ', style: AppTextStyles.font12Grey400),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: AppTextStyles.font12Grey400.copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }
}
