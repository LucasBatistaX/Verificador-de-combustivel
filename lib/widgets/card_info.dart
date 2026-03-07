import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_assets.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/utils/app_text_style.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
      child: Card(
        color: AppColors.backgroundCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(AppSizes.s12),
        ),
        child: Container(
          constraints: BoxConstraints(
            minHeight: AppSizes.h120,
            minWidth: AppSizes.w448,
            maxHeight: AppSizes.h130,
            maxWidth: AppSizes.w448,

          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: AppSizes.s18,
                  left: AppSizes.s18,
                ),
                child: Row(
                  children: [
                    Image.asset(AppAssets.info),
                    SizedBox(width: AppSizes.s12),
                    Text("Como funciona?", style: AppTextStyles.titleInfo),
                  ],
                ),
              ),
              SizedBox(height: AppSizes.s6),
              Padding(
                padding: const EdgeInsets.only(
                  left: AppSizes.s50,
                  right: AppSizes.s2,
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "O etanol compensa quando seu preço é até ",
                                  style: AppTextStyles.richTextStyle,
                                ),
                                TextSpan(
                                  text: "70% ",
                                  style: AppTextStyles.colorfulTextStyle,
                                ),
                                TextSpan(
                                  text: "do valor da gasolina. \n",
                                  style: AppTextStyles.richTextStyle,
                                ),
                                TextSpan(
                                  text:
                                      "Isso acontece porque o etanol rende aproximadamente 70% da quilometragem da gasolina.",
                                  style: AppTextStyles.richTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
