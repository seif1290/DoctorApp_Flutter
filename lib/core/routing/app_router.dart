import 'package:doctor_app/core/di/setup.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/home/presentation/views/home_view.dart';
import 'package:doctor_app/features/login/data/repos/login_repo.dart';
import 'package:doctor_app/features/login/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:doctor_app/features/login/presentation/views/login_view.dart';
import 'package:doctor_app/features/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(loginRepo: getIt<LoginRepo>()),
            child: const LoginView(),
          ),
        );
      case Routes.homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
