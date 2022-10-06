import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                decoration: boxStyle5,
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
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: SfLinearGauge(
                        minorTicksPerInterval: 5,
                        useRangeColorForAxis: true,
                        animateAxis: true,
                        axisTrackStyle: const LinearAxisTrackStyle(thickness: 5),
                        minimum: 0,
                        maximum: 50,
                        axisLabelStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: "louis",
                        ),
                        markerPointers: [
                          LinearShapePointer(
                            borderWidth: 1,
                            value: double.parse(bmi),
                            shapeType: LinearShapePointerType.invertedTriangle,
                            elevation: 5,
                            color: status == 0 ? Colors.tealAccent : status == 1 ? Colors.green : status == 2 ? Colors.orange : Colors.red,
                            elevationColor: Colors.grey.withOpacity(0.1),,
                          )
                        ],
                        ranges: const <LinearGaugeRange>[
                          LinearGaugeRange(
                            startValue: 0,
                            endValue: 18.4,
                            position: LinearElementPosition.cross,
                            color: Colors.tealAccent,
                          ),
                          LinearGaugeRange(
                            startValue: 18.5,
                            endValue: 24.9,
                            position: LinearElementPosition.cross,
                            color: Colors.green,
                          ),
                          LinearGaugeRange(
                            startValue: 25.0,
                            endValue: 29.9,
                            position: LinearElementPosition.cross,
                            color: Colors.orange,
                          ),
                          LinearGaugeRange(
                            startValue: 30.0,
                            endValue: 100.0,
                            position: LinearElementPosition.cross,
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
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text[21][language],
                    style: deepPurpleStyle1,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5,),
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
            const SizedBox(height: 5,),
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
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.26),              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: boxStyle4,
                    child: ElevatedButton(
                      style: buttonStyle2,
                      onPressed: () async {
                        String body = '${text[14][language]} $bmi ${text[15][language]}\n${text[16][language]}';
                        body += status == 0 ? text[17][language] : status == 1 ? text[18][language] : status == 2 ? text[19][language] : text[20][language];
                        body += '\n${text[22][language]}$minWeight${text[23][language]}$highWeight${text[24][language]}\n${text[25][language]}$ponderalIndex${text[26][language]}';
                        await Share.share(body);
                      },
                      child: Image.asset("asset/share.png"),
                    ),
                  ),
                  Container(
                    height: 58,
                    width: 58,
                    decoration: boxStyle3,
                    child: ElevatedButton(
                      style: buttonStyle1,
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Image.asset("asset/refresh.png"),
                    ),
                  ),
              Container(
                height: 44,
                width: 44,
                decoration: boxStyle4,
                child: ElevatedButton(
                  style: buttonStyle2,
                  onPressed: () async {
                    try {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      List<String> saveList = prefs.getStringList('saveList') ?? [];
                      DateTime now = DateTime.now();
                      String formattedDate = "${now.year}-${now.month}-${now.day} - ${now.hour}:${now.minute}";
                      saveList.add('{"sex": "$man", "weight": "$weight", "height": "$height", "bmi": "$bmi", "status": "$status", "minWeight": "$minWeight", "maxWeight": "$highWeight", "ponderal": "$ponderalIndex", "formattedDate":"$formattedDate"}');
                      await prefs.setStringList('saveList', saveList);
                      final snackBar = SnackBar(
                        content: Container(
                          height: 45,
                          decoration: boxStyle3,
                          child: Center(
                            child: Text(
                              text[27][language],
                              style: whiteStyle,
                            ),
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.only(
                            bottom: 0,
                            right: 150,
                            left: 150
                        ),
                        duration: const Duration(seconds: 1),
                        );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } catch (e) {
                      print(e);
                    }
                  },
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
