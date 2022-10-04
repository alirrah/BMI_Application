import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xfff6faff);
Color purple = const Color(0xff9494ff);
Color deepPurple = const Color(0xff7777ff);
Color soDeepPurple = const Color(0xff372b7b);
Color darkPurple = const Color(0x337777ff);

int language = 0;
bool man = true;

TextStyle purpleStyle = TextStyle(
    color: deepPurple,
    fontSize: 36,
    fontWeight: FontWeight.bold,
    fontFamily: "koodar"
);

TextStyle deepPurpleStyle1 = TextStyle(
    color: soDeepPurple,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: "louis"
);

TextStyle deepPurpleStyle2 = TextStyle(
  color: soDeepPurple,
  fontFamily: "louis",
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

TextStyle blackStyle = const TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: "louis"
);

List<List<String>> text = [
  //0
  [
    "BMI Calculator"
  ],
  //1
  [
    "BMI "
  ],
  //2
  [
    "Calculator"
  ],
  //3
  [
    "Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women."
  ],
  //4
  [
    "Male"
  ],
  //5
  [
    "Female"
  ]
];