import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_assets.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/utils/app_text_style.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h200,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.centerLeft,
          end: AlignmentGeometry.centerRight,
          colors: [
            AppColors.backgroundHeaderBegin,
            AppColors.backgroundHeaderEnd,
          ],
        ),
      ),
    
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.s24),
        child: Column(
          children: [
            Image.asset(
              AppAssets.Logo,
              height: AppSizes.h80,
              color: AppColors.backgroundButton,
            ),
            Text("Gasolina ou Etanol?", style: AppTextStyles.titleHeader),
            Text(
              "Descubra qual combustível compensa mais.",
              style: AppTextStyles.subTitleHeader.copyWith(
                color: AppColors.title.withOpacity(AppSizes.s08),
              ),
            ),
          ],
        ),
      ),
    );
  }
}