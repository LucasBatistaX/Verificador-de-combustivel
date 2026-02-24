import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_assets.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/utils/app_text_style.dart';

class Forms extends StatelessWidget {
  const Forms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.s24,
        horizontal: AppSizes.s16,
      ),
      child: Card(
        color: AppColors.backgroundCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(AppSizes.s16),
        ),
        child: SizedBox(
          height: AppSizes.h380,
          width: AppSizes.w448,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.s24),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets.raio, height: AppSizes.s16),
                    SizedBox(width: AppSizes.s8),
                    Text("Informe os Preços.", style: AppTextStyles.titleCard),
                  ],
                ),
                SizedBox(height: AppSizes.s24),
                Row(
                  children: [
                    Image.asset(AppAssets.gasolina, height: AppSizes.s16),
                    SizedBox(width: AppSizes.s8),
                    Text(
                      "PREÇO DA GASOLINA.",
                      style: AppTextStyles.subTitleCard,
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.s8),
                TextFormField(
                  style: AppTextStyles.titleCard,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      AppAssets.money,
                      height: AppSizes.s18,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSizes.s12),
                    ),
                    label: Text("Ex: 6,29", style: AppTextStyles.labelCard),
                  ),
                ),
                SizedBox(height: AppSizes.s24),
                Row(
                  children: [
                    Image.asset(AppAssets.etanol, height: AppSizes.s16),
                    SizedBox(width: AppSizes.s8),
                    Text("PREÇO DO ETANOL.", style: AppTextStyles.subTitleCard),
                  ],
                ),
                SizedBox(height: AppSizes.s8),
                TextFormField(
                  style: AppTextStyles.titleCard,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      AppAssets.money,
                      height: AppSizes.s18,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSizes.s12),
                    ),
                    label: Text("Ex: 4,29", style: AppTextStyles.labelCard),
                  ),
                ),
                SizedBox(height: AppSizes.s24),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.backgroundButtonEnd,
                    padding: EdgeInsets.symmetric(vertical: AppSizes.s14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(AppSizes.s12),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: .center,
                    children: [
                      Image.asset(AppAssets.calculadora),
                      SizedBox(width: AppSizes.s8),
                      Text(
                        "CALCULAR MELHOR OPÇÃO",
                        style: TextStyle(
                          fontSize: AppSizes.s16,
                          color: AppColors.titleButton,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
