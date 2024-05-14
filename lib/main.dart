import 'package:calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,


      theme: ThemeData(
        inputDecorationTheme:  InputDecorationTheme(
          hintStyle: const TextStyle(color: Colors.grey),
          labelStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 1,color: Colors.grey)
          ),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 1,color: Colors.grey)
          ),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 1,color: Colors.grey)
          )
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: Colors.white)
        ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
            .copyWith(background: const Color(0xff0A0E21)),
      ),
      home: const BMICalculator(),
    );
  }
}