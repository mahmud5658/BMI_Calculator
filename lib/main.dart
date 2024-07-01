import 'package:bmi/config/theme.dart';
import 'package:bmi/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
     theme: lightTheme,
     darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}

