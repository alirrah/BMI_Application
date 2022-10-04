import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xfff6faff);
Color purple = const Color(0xff9494ff);
Color deepPurple = const Color(0xff7777ff);
Color soDeepPurple = const Color(0xff372b7b);
Color darkPurple = const Color(0x337777ff);

int language = 0;
bool man = true;
double height = 160, weight = 50;

TextStyle purpleStyle1 = TextStyle(
    color: deepPurple,
    fontSize: 36,
    fontWeight: FontWeight.bold,
    fontFamily: "koodar"
);

TextStyle purpleStyle2 =  TextStyle(
    color: deepPurple,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: "louis"
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

TextStyle deepPurpleStyle3 = TextStyle(
    color: soDeepPurple,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: "louis"
);

TextStyle blackStyle = const TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: "louis"
);

TextStyle greyStyle = TextStyle(
    color: Colors.black.withOpacity(0.6),
    fontFamily: "louis",
    fontWeight: FontWeight.bold,
    fontSize: 16
);

TextStyle whiteStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: "louis"
);

BoxDecoration boxStyle1 = BoxDecoration(
  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
  color: backgroundColor,
  boxShadow: [
    const BoxShadow(
      color: Colors.white,
      offset: Offset(-8, -8),
      spreadRadius: 5,
      blurRadius: 12,
    ),
    BoxShadow(
      color: darkPurple,
      offset: const Offset(5, 5),
      spreadRadius: 5,
      blurRadius: 20,
    ),
  ],
);

BoxDecoration boxStyle2 =  BoxDecoration(
  color: backgroundColor,
  borderRadius: BorderRadius.circular(6),
  boxShadow: [
    BoxShadow(
      color: darkPurple,
      offset: const Offset(4, 4),
      spreadRadius: 1,
      blurRadius: 8,
    ),
  ],
);

BoxDecoration boxStyle3 = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
      colors: [
        purple,
        deepPurple,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: darkPurple,
        offset: const Offset(0, 5),
        spreadRadius: 5,
        blurRadius: 8,
      ),
    ]
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
  ],
  //6
  [
    "Height "
  ],
  //7
  [
    "cm"
  ],
  //8
  [
    "Weight "
  ],
  //9
  [
    "Kg"
  ],
  //10
  [
    "Calculate your BMI"
  ],
  //11
  [
    "Back"
  ],
  //12
  [
    "Your "
  ],
  //13
  [
    "Summary"
  ]
];