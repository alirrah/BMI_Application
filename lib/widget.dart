import 'package:flutter/material.dart';
import 'package:bmi_application/style/style.dart';

Widget circularWidget()=> Positioned(
  top: 50,
  child: Container(
    width: 145,
    height: 145,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(145),
      color: backgroundColor,
      boxShadow: [
        BoxShadow(
          color: darkPurple,
          offset: const Offset(12, 12),
          spreadRadius: 5,
          blurRadius: 20,
        ),
      ],
    ),
  ),
);