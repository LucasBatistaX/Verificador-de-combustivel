import 'package:flutter/material.dart';
import 'package:fuel_wise/src/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.indigo)),
      debugShowCheckedModeBanner: false,
      title: 'FuelWise',
      home: HomePage(),
    );
  }
}
