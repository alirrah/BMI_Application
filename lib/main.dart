import 'package:bmi_application/screen/infromation_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI Calculator",
      color: Color(0xff9494ff),
      home: informationPage(),
    );
  }
}