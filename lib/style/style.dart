import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xfff6faff);
Color purple = const Color(0xff9494ff);
Color deepPurple = const Color(0xff7777ff);
Color soDeepPurple = const Color(0xff372b7b);
Color darkPurple = const Color(0x337777ff);
Color gery = const Color(0xFF5E5E5E);
Color dark = const Color(0xff383939);
Color white = Color(0x33372B7B);

int language = 0;
bool man = true;
double height = 170, weight = 70;

TextStyle backStyle1 = TextStyle(
  color: backgroundColor,
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: "louis",
);

TextStyle backStyle2 = TextStyle(
  color: backgroundColor,
  fontSize: 12,
  fontFamily: "louis",
);

TextStyle purpleStyle1 = TextStyle(
    color: deepPurple,
    fontSize: 36,
    fontWeight: FontWeight.w900,
    fontFamily: "koodar"
);

TextStyle purpleStyle2 =  TextStyle(
    color: deepPurple,
    fontSize: 14,
    fontWeight: FontWeight.w900,
    fontFamily: "louis"
);

TextStyle purpleStyle3 = TextStyle(
    color: deepPurple,
    fontSize: 50,
    fontWeight: FontWeight.w900,
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
  fontWeight: FontWeight.w900,
  fontSize: 16,
);

TextStyle deepPurpleStyle3 = TextStyle(
    color: soDeepPurple,
    fontSize: 14,
    fontWeight: FontWeight.w900,
    fontFamily: "louis"
);

TextStyle blackStyle = const TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: "louis"
);

TextStyle deepPurpleStyle4 = TextStyle(
    color: soDeepPurple,
    fontSize: 40,
    fontWeight: FontWeight.normal,
    fontFamily: "louis"
);

TextStyle deepPurpleStyle5 = TextStyle(
    color: soDeepPurple,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    fontFamily: "louis"
);

TextStyle darkStyle1 = TextStyle(
  fontFamily: 'louis',
  color: dark,
  fontSize: 16,
);

TextStyle darkStyle2 = TextStyle(
  fontFamily: 'louis',
  fontWeight: FontWeight.bold,
  color: dark,
  fontSize: 25,
);

TextStyle greyStyle = TextStyle(
    color: Colors.black.withOpacity(0.6),
    fontFamily: "louis",
    fontWeight: FontWeight.w900,
    fontSize: 16
);

TextStyle greyStyle1 = TextStyle(
    fontFamily: 'louis',
    color: gery,
    fontSize: 13
);

TextStyle whiteStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w900,
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

BoxDecoration boxStyle4 = BoxDecoration(
  borderRadius: BorderRadius.circular(6),
  color: backgroundColor,
  boxShadow: [
    BoxShadow(
      color: darkPurple,
      offset: const Offset(4, 4),
      spreadRadius: 5,
      blurRadius: 8,
    ),
    const BoxShadow(
      color: Colors.white,
      offset: Offset(-6, -6),
      spreadRadius: 5,
      blurRadius: 7,
    ),
  ],
);

BoxDecoration boxStyle5 = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
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

ButtonStyle buttonStyle1 = ButtonStyle(
  foregroundColor:
  MaterialStateProperty.all(Colors.transparent),
  backgroundColor:
  MaterialStateProperty.all<Color>(Colors.transparent),
  elevation: MaterialStateProperty.all(0),
  shape:
  MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);

ButtonStyle buttonStyle2 = ButtonStyle(
  foregroundColor:
  MaterialStateProperty.all(Colors.transparent),
  backgroundColor:
  MaterialStateProperty.all<Color>(Colors.transparent),
  elevation: MaterialStateProperty.all(0),
  shape:
  MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  ),
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
  ],
  //14
  [
    "Your BMI is"
  ],
  //15
  [
    "Kg/m2"
  ],
  //16
  [
    "Your Weight Is "
  ],
  //17
  [
    "Underweight"
  ],
  //18
  [
    "Normal"
  ],
  //19
  [
    "OverWeight"
  ],
  //20
  [
    "Obese"
  ],
  //21
  [
    "Healthy BMI range: 18.5 kg/m2 - 25 kg/m2"
  ],
  //22
  [
    "Healthy weight for the height: "
  ],
  //23
  [
    " kgs - "
  ],
  //24
  [
    " kgs"
  ],
  //25
  [
    "Ponderal Index: "
  ],
  //26
  [
    " kg/m3"
  ],
  //27
  [
    'Saved'
  ],
  //28
  [
    "Written by Alireza Rahmani Samani"
  ],
  //29
  [
    "Menu"
  ],
  //30
  [
    "Settings"
  ],
  //31
  [
    "HNo results found"
  ]
];