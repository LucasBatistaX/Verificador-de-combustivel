import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/utils/app_text_style.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.h80),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Desenvolvido por ",
                style: AppTextStyles.richTextStyleFooter,
              ),
              TextSpan(
                text: "Lucas Batista",
                style: AppTextStyles.colorfulTextStyleFooter,
              ),
              TextSpan(
                text: ", utilizando ",
                style: AppTextStyles.richTextStyleFooter,
              ),
              TextSpan(
                text: "Flutter.",
                style: AppTextStyles.colorfulTextStyleFooter,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
