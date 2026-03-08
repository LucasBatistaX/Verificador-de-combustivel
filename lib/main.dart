import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuel_wise/cubit/fuel_cubit.dart';
import 'package:fuel_wise/domain/service/fuel_service.dart';
import 'package:fuel_wise/src/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    BlocProvider(
      create: (_) => FuelCubit(FuelService()),
        child: MaterialApp(
          //theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.indigo)),
          debugShowCheckedModeBanner: false,
          title: 'FuelWise',
          home: HomePage(),
        ),
    );  
  }
}
