import 'package:bmi_application/style/style.dart';
import 'package:bmi_application/widget.dart';
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
            ],
          ),
        )
    );
  }
}