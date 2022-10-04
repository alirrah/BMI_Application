import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';

class resultPage extends StatelessWidget {
  resultPage({Key? key, required this.bmi, required this.minWeight, required this.highWeight, required this.ponderalIndex, required this.status}) : super(key: key);
  final String bmi, minWeight, highWeight, ponderalIndex;
  final int status;

    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      Text(
                        text[11][language],
                        style: greyStyle,
                      )
                    ],
                  ),
                )
            ),
            const Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text[12][language],
                    style: purpleStyle1,
                  ),
                  TextSpan(
                    text: text[13][language],
                    style: blackStyle,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: Container(
                width: 336,
                height: 311,
                decoration: boxStyle1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      text[14][language],
                      style: deepPurpleStyle4,
                    ),
                    Text(
                      bmi,
                      style: purpleStyle3,
                    ),
                    Text(
                      text[15][language],
                      style: deepPurpleStyle5,
                    ),
                    //TODO -> linear chart for show bmi status
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: text[16][language],
                            style: deepPurpleStyle1,
                          ),
                          TextSpan(
                            text: status == 0 ? text[17][language] : status == 1 ? text[18][language] : status == 2 ? text[19][language] : text[20][language],
                            style: TextStyle(
                                color: status == 0 ? Colors.yellow : status == 1 ? Colors.green : status == 2 ? Colors.orange : Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: "louis"
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Text(
              text[21][language],
              style: deepPurpleStyle1,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text[22][language],
                    style: deepPurpleStyle1,
                  ),
                  TextSpan(
                    text: minWeight,
                    style: deepPurpleStyle1,
                  ),
                  TextSpan(
                    text: text[23][language],
                    style: deepPurpleStyle1,
                  ),
                  TextSpan(
                    text: highWeight,
                    style: deepPurpleStyle1,
                  ),
                  TextSpan(
                    text: text[24][language],
                    style: deepPurpleStyle1,
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text[25][language],
                    style: deepPurpleStyle1,
                  ),
                  TextSpan(
                    text: ponderalIndex,
                    style: deepPurpleStyle1,
                  ),
                  TextSpan(
                    text: text[26][language],
                    style: deepPurpleStyle1,
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
