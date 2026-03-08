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
  //
  static const TextStyle titleInfo = TextStyle(
    color: AppColors.title,
    fontSize: AppSizes.s14,
    fontWeight: FontWeight.bold
  );

  //TextStyles CardInfo
  static const TextStyle colorfulTextStyle = TextStyle(
    color: AppColors.backgroundButtonBegin,
    fontSize: AppSizes.s12,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle colorfulTextStyleFooter = TextStyle(
    color: AppColors.backgroundButtonBegin,
    fontSize: AppSizes.s14,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle richTextStyle = TextStyle(
    color: AppColors.subtitleCard,
    fontSize: AppSizes.s12,
  );
  static const TextStyle richTextStyleFooter = TextStyle(
    color: AppColors.subtitleCard,
    fontSize: AppSizes.s14,
  );


  //Card Dialog Styles.
  static const TextStyle titleDialog = TextStyle(
    fontSize: AppSizes.s20,
    fontWeight: FontWeight.bold,
    color: AppColors.subtitleCard
  );
  static const TextStyle resultDialogText = TextStyle(
    fontSize: AppSizes.s24,
    fontWeight: FontWeight.bold,
    color: AppColors.backgroundHeaderBegin
  );
  //Card Dialog Rich Text

  static const TextStyle richTextDialog = TextStyle(color: AppColors.subtitleCard, fontWeight: FontWeight.bold);
  static const TextStyle richTextDialogColorful = TextStyle(color: AppColors.backgroundHeaderBegin, fontWeight: FontWeight.bold);

}
