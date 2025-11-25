import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/features/login/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FooterLogin extends StatelessWidget {
  const FooterLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TermsAndConditions(),
        const Gap(32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Doesn\'t have an account yet?',
              style: AppTextStyles.font12Grey400.copyWith(
                color: AppColors.black,
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('Sign Up')),
          ],
        ),
      ],
    );
  }
}
