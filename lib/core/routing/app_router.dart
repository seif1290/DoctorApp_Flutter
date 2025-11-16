import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login/presentation/views/login_view.dart';
import 'package:doctor_app/features/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (context) => const LoginView());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
