import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_assets.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/utils/app_text_style.dart';

class ResultDialog extends StatelessWidget {
  const ResultDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.s10),
          child: Container(
            height: AppSizes.h300,
            width: AppSizes.w500,
            decoration: BoxDecoration(
              color: AppColors.backgroundCard,
              borderRadius: BorderRadius.circular(AppSizes.s20)
            ),
            child:Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .center,
              children: [
                Row(
                  mainAxisAlignment: .end,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close, color: AppColors.subtitleCard,))
                    ],
                  ),
                Row(
                  mainAxisAlignment: .center,
                  children: [ 
                    Image.asset(AppAssets.raio, height: AppSizes.s14,),
                    SizedBox(width:AppSizes.s10 ,),
                    Text("RECOMENDAÇÃO", style:AppTextStyles.titleDialog ),
                    SizedBox(width:AppSizes.s10 ,),
                    Image.asset(AppAssets.raio, height: AppSizes.s14,),
                  ],
                ),
                SizedBox(height:AppSizes.s30,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Image.asset(AppAssets.gasolina),
                        SizedBox(width: AppSizes.s10,),
                        Text("Abasteça com Gasolina.", style:AppTextStyles.resultDialogText ),
                      ],
                    ),
                    SizedBox(height: AppSizes.s30,),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Icon(Icons.trending_up, color: AppColors.subtitleCard,),
                        SizedBox(width: AppSizes.s4),
                        RichText(text: TextSpan(text: "O Etanol está a ", style:AppTextStyles.richTextDialog)),
                        RichText(text: TextSpan(text: "100.0% ", style:AppTextStyles.richTextDialogColorful )),
                        RichText(text: TextSpan(text: "do preço da Gasolina.", style:AppTextStyles.richTextDialog)),
                      ],
                    ),
                    SizedBox(height: AppSizes.s30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppSizes.s10),
                      child: Text("A Gasolina compensa quando o Etanol está acima de 70% do seu preço.", style: AppTextStyles.subTitleCard,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );   
  }
}