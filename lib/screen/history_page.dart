import 'dart:convert';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lottie/lottie.dart';
import 'package:bmi_application/style/style.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        appBar: AppBar(
          title: Text(
            text[27][language],
            style: deepPurpleStyle5,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: soDeepPurple,
            ),
            onPressed: (){
              int number = 2;
              Navigator.popUntil(context, (route) => number-- == 0);
            },
          ),
        ),
        backgroundColor: backgroundColor,
        body: FutureBuilder(
          future: getResultData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
            if (snapshot.hasData && snapshot.connectionState == ConnectionState.done){
              List<String> resultList = snapshot.data ?? [];
              return resultList.isEmpty ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Lottie.asset(
                      'asset/empty.json',
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    Text(
                      text[31][language],
                      style: deepPurpleStyle2,
                    )
                  ],
                ),
              ):ListView.separated(
                  padding: const EdgeInsets.all(15.0),
                  itemCount: resultList.length,
                  separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 1),
                  itemBuilder: (BuildContext context, int i) {
                    String result = resultList[i];
                    var resultItems = jsonDecode(result);
                    return Slidable(
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                            onPressed:(context) async {
                              String body = '${text[14][language]} ${resultItems['bmi']} ${text[15][language]}\n${text[16][language]}';
                              body += resultItems['status'] == '0' ? text[17][language] : resultItems['status'] == '1' ? text[18][language] : resultItems['status'] == '2' ? text[19][language] : text[20][language];
                              body += '\n${text[22][language]}${resultItems["minWeight"]}${text[23][language]}${resultItems["maxWeight"]}${text[24][language]}\n${text[25][language]}${resultItems["ponderal"]}${text[26][language]}';
                              await Share.share(body);
                            },
                            backgroundColor: const Color(0xFF21B7CA),
                            foregroundColor: Colors.white,
                            icon: Icons.share,
                            label: 'Share',
                          ),
                          SlidableAction(
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                            onPressed: (context) async {
                              resultList.removeAt(i);
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              prefs.setStringList('saveList', resultList);
                              setState(() {});
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          tileColor: resultItems['status'] == '0' ? Colors.tealAccent[200] : resultItems['status'] == '1' ? Colors.green[200] : resultItems['status'] == '2' ? Colors.orange[200] : Colors.red[200],
                          title: Text(
                            resultItems['status'] == '0' ? text[17][language] : resultItems['status'] == '1' ? text[18][language] : resultItems['status'] == '2' ? text[19][language] : text[20][language],
                            style: darkStyle1,
                          ),
                          subtitle: Text(
                            resultItems['formattedDate'],
                            style: greyStyle1,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          leading: Text(
                            resultItems['bmi'],
                            style: darkStyle2,
                          ),
                        ),
                      ),
                    );
                  }
              );
            }else{
              return Center(
                child: CircularProgressIndicator(
                  color: soDeepPurple,
                ),
              );
            }
          },
        ),
      ),
    );
  }
  Future<List<String>> getResultData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> saveList = prefs.getStringList('saveList') ?? [];
    return saveList;
  }
}