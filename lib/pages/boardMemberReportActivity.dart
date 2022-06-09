import 'package:flutter/material.dart';
import 'package:akumak_app/model/reportActivity.dart';


var raList = <reportActivity>[]; //report Activity list

class boardMemberReportActivity extends StatefulWidget {
  const boardMemberReportActivity({Key? key}) : super(key: key);

  @override
  State<boardMemberReportActivity> createState() => _boardMemberReportActivityState();
}

class _boardMemberReportActivityState extends State<boardMemberReportActivity> {

  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {
    var ra1 = reportActivity(1, "Molla Deligi Raporu","Olcum Yapildi", "Kemer’in doğal mağaralarından biridir Molla Deliği Mağarası. Tahtalı Dağı’nın doğusunda bulunur ve yıl içerisinde turistler tarafından sıkça ziyaret edilir. Kuzdere ve Beycik’den yapacağınız 4 saatlik yürüyüşle Molla Deliği Mağarası’na ulaşabilirsiniz.");
    var ra2 = reportActivity(2, "Activity Report","Activity Highlight", "Activity Summary");
    var ra3 = reportActivity(3, "Activity Report","Activity Highlight", "Activity Summary");
    var ra4 = reportActivity(4, "Activity Report","Activity Highlight", "Activity Summary");
    var ra5 = reportActivity(5, "Activity Report","Activity Highlight", "Activity Summary");
    var ra6 = reportActivity(6, "Activity Report","Activity Highlight", "Activity Summary");
    var ra7 = reportActivity(7, "Activity Report","Activity Highlight", "Activity Summary");
    var ra8 = reportActivity(8, "Activity Report","Activity Highlight", "Activity Summary");
    var ra9 = reportActivity(9, "Activity Report","Activity Highlight", "Activity Summary");
    var ra10 = reportActivity(10, "Activity Report","Activity Highlight", "Activity Summary");
    var ra11 = reportActivity(11, "Activity Report","Activity Highlight", "Activity Summary");

    raList.add(ra1);
    raList.add(ra2);
    raList.add(ra3);
    raList.add(ra4);
    raList.add(ra5);
    raList.add(ra6);
    raList.add(ra7);
    raList.add(ra8);
    raList.add(ra9);
    raList.add(ra10);
    raList.add(ra11);

    _editingController = TextEditingController(text: initialText);

    super.initState();
  }


  Future<List<reportActivity>> reportActivityData() async {
    var reportActivityList = raList;
    return reportActivityList;
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFCDFFED),
        body: FutureBuilder<List<reportActivity>>(
          future: reportActivityData(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var repActList = snapshot.data;
              return Center(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(

                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: repActList!.length,
                        itemBuilder: (context,index){
                          var repAct = repActList[index];
                          return Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0,
                                  top: 10.0),
                                  child: SizedBox(
                                    width: 370,
                                    height: 55,
                                    child: Card(
                                      color: Color(0xFF91FDDD),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 10.0, right: 10.0,
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text("${repAct.activityName}",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 35,
                                                  width: 60,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          InkWell(
                                                            child: Icon(
                                                              Icons.delete,
                                                              color: Color(0xFF008762),
                                                            ),
                                                            onTap: (){
                                                              repAct = repActList.removeAt(index);
                                                              setState(() {
                                                              });
                                                            },
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          InkWell(
                                                            child: Icon(
                                                            Icons.edit,
                                                            color: Color(0xFF008762),
                                                          ),
                                                            onTap: () =>
                                                              showDialog(
                                                                context: context,
                                                                builder: (context) =>
                                                                    AlertDialog(
                                                                      backgroundColor: Color(0xFF91FDDD),
                                                                      content: SingleChildScrollView(
                                                                        child: Column(
                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                          mainAxisSize: MainAxisSize.min,
                                                                          children: [
                                                                            TextField(
                                                                              maxLines: null,
                                                                              decoration:  InputDecoration(
                                                                                hintText: "Enter Report Title ",
                                                                                labelText: "Report Title",
                                                                                labelStyle: TextStyle(
                                                                                  color: Color(0xFF008762),
                                                                                ),
                                                                                floatingLabelBehavior:
                                                                                FloatingLabelBehavior.always,
                                                                              ),
                                                                              controller:
                                                                              TextEditingController(
                                                                                  text: "${repAct.activityName}"),
                                                                            ),
                                                                            TextField(
                                                                              maxLines: null,
                                                                              decoration:
                                                                              InputDecoration(
                                                                                hintText:
                                                                                "Enter Activity Highlights",
                                                                                labelText:
                                                                                "Activity Highlights",
                                                                                labelStyle:
                                                                                TextStyle(
                                                                                  color:
                                                                                  Color(0xFF008762),
                                                                                ),
                                                                                floatingLabelBehavior:
                                                                                FloatingLabelBehavior.always,
                                                                                ),
                                                                              controller:
                                                                              TextEditingController(
                                                                                  text: "${repAct.activityHighlights}"),
                                                                            ),
                                                                            TextField(
                                                                              maxLines: null,
                                                                              decoration:
                                                                              InputDecoration(
                                                                                hintText:
                                                                                "Enter Activity Summary",
                                                                                labelText:
                                                                                "Activity Summary",
                                                                                labelStyle:
                                                                                TextStyle(
                                                                                  color:
                                                                                  Color(0xFF008762),
                                                                                ),
                                                                                floatingLabelBehavior:
                                                                                FloatingLabelBehavior.always,
                                                                              ),
                                                                              controller:
                                                                              TextEditingController(
                                                                                  text: "${repAct.activitySummary}"),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      actions: [
                                                                        TextButton(
                                                                          child: Text("Save",style: TextStyle(color: Color(0xFF008762)),),
                                                                          onPressed: (){
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                        TextButton(
                                                                          child: Text("Cancel",style: TextStyle(color: Color(0xFF008762)),),
                                                                          onPressed: (){
                                                                            Navigator.pop(context);
                                                                          },
                                                                        ),
                                                                      ],
                                                                    )
                                                              ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ) ,
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            }else{
              return Center(
                child: Text("Error"),
              );
            }
        }
        )
    );
  }
}
