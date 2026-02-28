import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';

class AppTextStyles {

  //
  static const TextStyle titleHeader = TextStyle(
    color: AppColors.title,
    fontSize: AppSizes.s30,
    fontWeight: FontWeight.bold,
  );

  //
  static const TextStyle subTitleHeader = TextStyle(
    color: AppColors.title,
    fontSize: AppSizes.s14,
    fontWeight: FontWeight.w100,
  );

  //
  static const TextStyle titleCard = TextStyle(
    color: AppColors.title,
    fontSize: AppSizes.s18,
    fontWeight: FontWeight.bold,
  );

  //
  static const TextStyle subTitleCard = TextStyle(
    color: AppColors.subtitleCard,
    fontSize: AppSizes.s14,
  );
  //
  static const TextStyle labelCard = TextStyle(
    color: AppColors.subtitleCard,
    fontSize: AppSizes.s18,
  );
}
