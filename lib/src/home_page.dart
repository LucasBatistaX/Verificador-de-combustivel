import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_assets.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/utils/app_text_style.dart';
import 'package:fuel_wise/widgets/forms.dart';
import 'package:fuel_wise/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBody,
      body: ListView(
        children: [
          Column(
            children: [
              Header(),
              Forms(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
                child: Card(
                  color: AppColors.backgroundCard,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(AppSizes.s12),
                  ),
                  child: SizedBox(
                    height: AppSizes.h120,
                    width: AppSizes.w448,
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
                              Text(
                                "Como funciona?",
                                style: TextStyle(
                                  color: AppColors.title,
                                  fontSize: AppSizes.s14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                                            style: TextStyle(
                                              color: AppColors.subtitleCard,
                                              fontSize: AppSizes.s12,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "70% ",
                                            style: TextStyle(
                                              color: AppColors
                                                  .backgroundButtonBegin,
                                              fontSize: AppSizes.s12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "do valor da gasolina. \n",
                                            style: TextStyle(
                                              color: AppColors.subtitleCard,
                                              fontSize: AppSizes.s12,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                "Isso acontece porque o etanol rende aproximadamente 70% da quilometragem da gasolina.",
                                            style: TextStyle(
                                              color: AppColors.subtitleCard,
                                              fontSize: AppSizes.s12,
                                            ),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// RichText(
//                                 text: TextSpan(
//                                   text:
//                                       "Isso acontece porque o etanol rende aproximadamente 70% da quilometragem da gasolina.",
//                                   style: TextStyle(
//                                     color: AppColors.subtitleCard,
//                                     fontSize: AppSizes.s12,
//                                   ),
//                                 ),
//                               ),
