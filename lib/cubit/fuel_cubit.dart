import 'package:bloc/bloc.dart';
import 'package:fuel_wise/cubit/fuel_state.dart';
import 'package:fuel_wise/domain/entities/fuel_result.dart';
import 'package:fuel_wise/domain/service/fuel_service.dart';

//Orquestra;
class FuelCubit extends Cubit<FuelState>{
  final FuelService service;  
  late FuelResult _result;

  //Getter  e setter do Resultado
  FuelResult get result => _result;
  void setResult (FuelResult data){
    _result = data;
  }


  void calculate(double gasolina, double etanol) {

    try {
      emit(FuelLoading());

      // double gasolina = double.parse(gasolinaText);
      // double etanol = double.parse(etanolText);

      final resultado = service.calculate(gasolina: gasolina, etanol: etanol);
      setResult(resultado);
      
      emit(FuelCalculed(resultado));

    } catch (e){

      emit(FuelError(e.toString()));
    }

  }

  //Construtor
  FuelCubit(this.service) : super (FuelInitial());
}