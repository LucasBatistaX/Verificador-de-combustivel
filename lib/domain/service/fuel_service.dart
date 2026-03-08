import 'package:fuel_wise/domain/entities/fuel_result.dart';
import 'package:fuel_wise/utils/app_assets.dart';
import 'package:fuel_wise/utils/app_colors.dart';

//Service desaclopado;
class FuelService {

  FuelResult calculate({required double gasolina, required double etanol}) {
    if (gasolina <= 0 || etanol <= 0) {
      throw Exception("Valores devem ser maiores que zero");
    }
    final resultado = etanol / gasolina;

    if(resultado < 0.7) {
      return FuelResult(message: "Abasteça com Etanol.", resultado: resultado * 100, color: AppColors.etanolColor, image: AppAssets.etanol);
    } else {
      return FuelResult(message: "Abasteça com Gasolina.", resultado: resultado * 100, color: AppColors.backgroundHeaderBegin, image: AppAssets.gasolina);
    }
  }

}
