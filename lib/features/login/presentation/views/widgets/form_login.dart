import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailCont;
  late TextEditingController _passwordCont;
  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailCont = TextEditingController();
    _passwordCont = TextEditingController();
  }

  @override
  void dispose() {
    _emailCont.dispose();
    _passwordCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormField(controller: _emailCont, hintText: 'Email'),
          const Gap(16),
          AppTextFormField(
            controller: _passwordCont,
            hintText: 'Password',
            obscureText: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility_off),
            ),
            textInputAction: TextInputAction.done,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text('Forgot Password?'),
            ),
          ),
          const Gap(16),
          ElevatedButton(onPressed: () {}, child: const Text('Login')),
          const Gap(32),
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
      ),
    );
  }
}
