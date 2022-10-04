import 'dart:math';
import 'package:bmi_application/screen/result_page.dart';
import 'package:bmi_application/style/style.dart';
import 'package:bmi_application/widget.dart';
import 'package:horizontal_picker/horizontal_picker.dart';
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
                        style: purpleStyle1,
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
                  style: deepPurpleStyle1,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(()=> man = true);
                    },
                    child: Opacity(
                      opacity: man ? 1 : 0.3,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              circularWidget(),
                              Image.asset("asset/male.png")
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text(
                            text[4][language],
                            style: deepPurpleStyle2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        man = false;
                      });
                    },
                    child: Opacity(
                      opacity: !man ? 1 : 0.3,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              circularWidget(),
                              Image.asset("asset/female.png")
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text(
                            text[5][language],
                            style: deepPurpleStyle2,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: 393,
                height: 96,
                decoration: boxStyle1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: boxStyle2,
                            child: Image.asset("asset/height.png"),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: text[6][language],
                                  style: deepPurpleStyle3,
                                ),
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: const Offset(0, 2),
                                    child: Text(
                                      text[7][language],
                                      textScaleFactor: 0.7,
                                      style: purpleStyle2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 104,
                      height: 96,
                      child: HorizontalPicker(
                        minValue: 50,
                        maxValue: 250,
                        divisions: 2000,
                        height: 96,
                        initialPosition: InitialPosition.start,
                        backgroundColor: Colors.transparent,
                        activeItemTextColor: soDeepPurple,
                        passiveItemsTextColor: purple,
                        showCursor: false,
                        onChanged: (value) {
                          height = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: 393,
                height: 96,
                decoration: boxStyle1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: boxStyle2,
                            child: Image.asset("asset/weight.png"),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: text[8][language],
                                  style: deepPurpleStyle3,
                                ),
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: const Offset(0, 2),
                                    child: Text(
                                      text[9][language],
                                      textScaleFactor: 0.7,
                                      style: purpleStyle2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 104,
                      height: 96,
                      child: HorizontalPicker(
                        minValue: 15,
                        maxValue: 400,
                        divisions: 4000,
                        height: 96,
                        initialPosition: InitialPosition.start,
                        backgroundColor: Colors.transparent,
                        activeItemTextColor: soDeepPurple,
                        passiveItemsTextColor: purple,
                        showCursor: false,
                        onChanged: (value) {
                          weight = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: MaterialButton(
                  onPressed: (){
                    var bmi = weight / (pow((height / 100), 2));
                    var status = bmi < 18.5 ? 0 : bmi < 25 ? 1 : bmi < 30 ? 2 : 3;
                    var minWeight = 18.5 * pow((height / 100), 2);
                    var maxWeight = 25 * pow((height / 100), 2);
                    var ponderalIndex = 1000000 * weight / (pow(height, 3));
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => resultPage(bmi: ((bmi * 10).round().toDouble() / 10).toString(), status: status, minWeight: ((minWeight * 10).round().toDouble() / 10).toString(), highWeight: ((maxWeight * 10).round().toDouble() / 10).toString(), ponderalIndex: ((ponderalIndex * 10).round().toDouble() / 10).toString())
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: boxStyle3,
                    child: Center(
                      child: Text(
                        text[10][language],
                        style: whiteStyle,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        )
    );
  }
}