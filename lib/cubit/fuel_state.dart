import 'package:equatable/equatable.dart';
import 'package:fuel_wise/domain/entities/fuel_result.dart';

//Estados disponiveis;
abstract class FuelState extends Equatable{
  @override
  List<Object?> get props => [];
}


class FuelInitial extends FuelState{}

class FuelLoading extends FuelState{

}

class FuelCalculed extends FuelState{
  final FuelResult resultado;

  FuelCalculed(this.resultado);

  @override
  List<Object?> get props => [resultado];
}

class FuelError extends FuelState{
  final String message;

  FuelError(this.message);

  @override
  List<Object?> get props => [message];
}