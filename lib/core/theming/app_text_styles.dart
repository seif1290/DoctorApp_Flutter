import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/widgets.dart';

class AppTextStyles {
  AppTextStyles._();
  static TextStyle font32Blue700 = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
    height: 1.5,
  );
  static TextStyle font24Black700 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static TextStyle font14Grey400 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    height: 1.5,
  );
  static TextStyle font14LightGrey500 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGrey,
    height: 1.5,
  );
  static TextStyle font12Grey400 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    height: 1.5,
  );
  static TextStyle font16White600 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    height: 1.5,
  );
}
