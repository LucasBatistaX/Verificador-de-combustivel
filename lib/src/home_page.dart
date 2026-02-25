import 'package:flutter/material.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/widgets/card_info.dart';
import 'package:fuel_wise/widgets/footer.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Header(),
            Forms(),
            CardInfo(),
            Footer(),
            
          ],
        ),
      ),
    );
  }
}


