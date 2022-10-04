import 'package:bmi_application/screen/infromation_page.dart';
import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: text[0][language],
      color: purple,
      home: const informationPage(),
    );
  }
}