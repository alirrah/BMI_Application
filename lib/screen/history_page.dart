import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';

class historyPage extends StatefulWidget {
  const historyPage({Key? key}) : super(key: key);

  @override
  State<historyPage> createState() => _historyPageState();
}

class _historyPageState extends State<historyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
      ),
    );
  }
}