import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuel_wise/cubit/fuel_cubit.dart';
import 'package:fuel_wise/utils/app_assets.dart';
import 'package:fuel_wise/utils/app_colors.dart';
import 'package:fuel_wise/utils/app_sizes.dart';
import 'package:fuel_wise/utils/app_text_style.dart';
import 'package:fuel_wise/widgets/result_dialog.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  late final FuelCubit cubit;
  late final TextEditingController gasolinaController;
  late final TextEditingController etanolController;

  late final GlobalKey<FormState> formKey;



  // transforma o dado de virgula para ponto.
  double toPoint(String value){
    return double.parse(value.replaceAll(',', '.'));
  }
  // transforma o dado de ponto para virgula.
  String toComma(double data){
    return data.toString().replaceAll('.', ',');
  }

  // Verifica se e numero e transforma o dado em Double.
  bool isNumber(String data) {
    return parseNumber(data) != null;
  }
  double? parseNumber(String value) {
    
    if(value.contains(',')){
     String withComma = value;
     return toPoint(withComma);
    } else if(value.contains('.')){
      return double.tryParse(value);
    }
    return double.tryParse(value);
  }


  @override
  void initState() {
    super.initState();
    gasolinaController = TextEditingController();
    etanolController = TextEditingController();
    formKey = GlobalKey<FormState>();

    //Recuperando o Cubit injetado no Main;
    cubit = BlocProvider.of<FuelCubit>(context);
  }

  void submite() {
    if (formKey.currentState!.validate()) {
      cubit.calculate(
        parseNumber(gasolinaController.text)!,
        parseNumber(etanolController.text)!,
      );
      showDialog(context: context, builder: (context) => ResultDialog());
      gasolinaController.clear();
      etanolController.clear();
    }
  }

  @override
  void dispose() {
    gasolinaController.dispose();
    etanolController.dispose();
    super.dispose();
  }

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
        child: Container(
          constraints: BoxConstraints(
            minHeight: AppSizes.h370,
            maxHeight: AppSizes.h400,
            maxWidth: AppSizes.w448
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.s24),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: .start,
                children: [
                  Row(
                    children: [
                      Image.asset(AppAssets.raio, height: AppSizes.s16),
                      SizedBox(width: AppSizes.s8),
                      Text(
                        "Informe os Preços.",
                        style: AppTextStyles.titleCard,
                      ),
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Por favor, insira um valor.";
                      } else if (!isNumber(value)) {
                        return "Digite um número.";
                      }
                      return null;
                    },
                    controller: gasolinaController,
                    style: AppTextStyles.titleCard,
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        AppAssets.money,
                        height: AppSizes.s16,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSizes.s12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.backgroundButtonBegin),
                        borderRadius: BorderRadius.circular(AppSizes.s12)
                      ),

                      label: Text("Ex: 6,29", style: AppTextStyles.labelCard.copyWith(color: AppColors.subtitleCard.withAlpha(AppSizes.si60))),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: AppSizes.s24),
                  Row(
                    children: [
                      Image.asset(AppAssets.etanol, height: AppSizes.s16),
                      SizedBox(width: AppSizes.s8),
                      Text(
                        "PREÇO DO ETANOL.",
                        style: AppTextStyles.subTitleCard,
                      ),
                    ],
                  ),
                  SizedBox(height: AppSizes.s8),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Por favor, insira um valor.";
                      } else if (!isNumber(value)) {
                        return "Digite um número.";
                      }
                      return null;
                    },
                    controller: etanolController,
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.backgroundButtonBegin),
                        borderRadius: BorderRadius.circular(AppSizes.s12)
                      ),
                      label: Text("Ex: 4,29", style: AppTextStyles.labelCard.copyWith(color: AppColors.subtitleCard.withAlpha(AppSizes.si60))),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: AppSizes.s24),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.backgroundButtonEnd,
                      padding: EdgeInsets.symmetric(vertical: AppSizes.s24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(
                          AppSizes.s12,
                        ),
                      ),
                    ),
                    onPressed: () {
                      submite();
                    },
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
      ),
    );
  }
}