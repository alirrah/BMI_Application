import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SfLinearGauge(
                        minorTicksPerInterval: 4,
                        useRangeColorForAxis: true,
                        animateAxis: true,
                        axisTrackStyle: const LinearAxisTrackStyle(thickness: 2),
                        minimum: 0,
                        maximum: 70,
                        markerPointers: [
                          LinearShapePointer(
                            borderWidth: 1,
                            value: double.parse(bmi),
                            shapeType: LinearShapePointerType.invertedTriangle,
                            elevation: 5,
                            color: status == 0 ? Colors.tealAccent : status == 1 ? Colors.green : status == 2 ? Colors.orange : Colors.red,
                            elevationColor: Colors.grey.withOpacity(0.3),
                          )
                        ],
                        ranges: const <LinearGaugeRange>[
                          LinearGaugeRange(
                            startValue: 0,
                            endValue: 18.4,
                            position: LinearElementPosition.outside,
                            color: Colors.tealAccent,
                          ),
                          LinearGaugeRange(
                            startValue: 18.5,
                            endValue: 24.9,
                            position: LinearElementPosition.outside,
                            color: Colors.green,
                          ),
                          LinearGaugeRange(
                            startValue: 25.0,
                            endValue: 29.9,
                            position: LinearElementPosition.outside,
                            color: Colors.orange,
                          ),
                          LinearGaugeRange(
                            startValue: 30.0,
                            endValue: 100.0,
                            position: LinearElementPosition.outside,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
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
                                color: status == 0 ? Colors.tealAccent : status == 1 ? Colors.green : status == 2 ? Colors.orange : Colors.red,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: (){
                      //TODO -> share
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: boxStyle4,
                      child: Image.asset("asset/share.png"),
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 58,
                      width: 58,
                      decoration: boxStyle3,
                      child: Image.asset("asset/refresh.png"),
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      //TODO -> save
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: boxStyle4,
                      child: Image.asset("asset/save.png"),
                    ),
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
