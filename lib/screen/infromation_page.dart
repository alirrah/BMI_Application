import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';

class informationPage extends StatefulWidget {
  const informationPage({Key? key}) : super(key: key);

  @override
  State<informationPage> createState() => _informationPageState();
}

class _informationPageState extends State<informationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: text[1][language],
                        style: purpleStyle,
                      ),
                      TextSpan(
                        text: text[2][language],
                        style: blackStyle,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  text[3][language],
                  textAlign: TextAlign.justify,
                  style: deepPurpleStyle,
                ),
              ),
              const Spacer(),
            ],
          ),
        )
    );
  }
}