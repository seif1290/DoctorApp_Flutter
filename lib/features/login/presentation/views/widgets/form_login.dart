import 'package:doctor_app/core/helpers/helper_functions.dart';
import 'package:doctor_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_app/features/login/data/models/login_request_model/login_request_model.dart';
import 'package:doctor_app/features/login/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          AppTextFormField(
            controller: _emailCont,
            hintText: 'Email',
            validator: HelperFunctions.validateEmail,
            keyboardType: TextInputType.emailAddress,
          ),
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
            validator: HelperFunctions.validatePassword,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text('Forgot Password?'),
            ),
          ),
          const Gap(16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<LoginCubit>().login(
                  LoginRequestModel(
                    email: _emailCont.text,
                    password: _passwordCont.text,
                  ),
                );
              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
