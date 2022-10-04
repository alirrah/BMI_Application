import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';

class resultPage extends StatelessWidget {
  const resultPage({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}
