
import 'package:flutter/material.dart';
import 'package:akumak_app/model/reportMeeting.dart';

var rmList = <reportMeeting>[]; //report Meeting list

class boardMemberReportMeeting extends StatefulWidget {
  const boardMemberReportMeeting({Key? key}) : super(key: key);

  @override
  State<boardMemberReportMeeting> createState() => _boardMemberReportMeetingState();
}

class _boardMemberReportMeetingState extends State<boardMemberReportMeeting> {

  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {

    var rm1 = reportMeeting(1,"Meeting Content","10/05/2022");
    var rm2 = reportMeeting(2,"Meeting Content","10/05/2022");
    var rm3 = reportMeeting(3,"Meeting Content","10/05/2022");
    var rm4 = reportMeeting(4,"Meeting Content","10/05/2022");
    var rm5 = reportMeeting(5,"Meeting Content","10/05/2022");
    var rm6 = reportMeeting(6,"Meeting Content","10/05/2022");
    var rm7 = reportMeeting(7,"Meeting Content","10/05/2022");
    var rm8 = reportMeeting(8,"Meeting Content","10/05/2022");
    var rm9 = reportMeeting(9,"Meeting Content","10/05/2022");


    rmList.add(rm1);
    rmList.add(rm2);
    rmList.add(rm3);
    rmList.add(rm4);
    rmList.add(rm5);
    rmList.add(rm6);
    rmList.add(rm7);
    rmList.add(rm8);
    rmList.add(rm9);

    _editingController = TextEditingController(text: initialText);


    super.initState();
  }


  Future<List<reportMeeting>> reportMeetingData() async {
    var reportMeetingList = rmList;
    return reportMeetingList;
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
        body: FutureBuilder<List<reportMeeting>>(
          future: reportMeetingData(),
            builder: (context,snapshot){
            if(snapshot.hasData){
              var repMeeList = snapshot.data;
              return Center(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: repMeeList!.length,
                        itemBuilder: (context,index){
                          var repMee = repMeeList[index];
                          return Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
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
                                                    Text("Meeting at: ${repMee.meetingDate}",
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
                                                              repMee = repMeeList.removeAt(index);
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
                                                                                    hintText: "Enter Meeting Date ",
                                                                                    labelText: "Meeting Date",
                                                                                    labelStyle: TextStyle(
                                                                                      color: Color(0xFF008762),
                                                                                    ),
                                                                                    floatingLabelBehavior:
                                                                                    FloatingLabelBehavior.always,
                                                                                  ),
                                                                                  controller:
                                                                                  TextEditingController(
                                                                                      text: "${repMee.meetingDate}"),
                                                                                ),
                                                                                TextField(
                                                                                  maxLines: null,
                                                                                  decoration:
                                                                                  InputDecoration(
                                                                                    hintText:
                                                                                    "Enter Meeting Content",
                                                                                    labelText:
                                                                                    "Meeting Content",
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
                                                                                      text: "${repMee.meetingContent}"),
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
                                                                        ),
                                                                )
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
                            ),
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
            },
        )


    );
  }
}
