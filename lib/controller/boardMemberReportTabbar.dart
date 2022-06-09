import 'package:akumak_app/pages/boardMemberReportActivity.dart';
import 'package:akumak_app/pages/boardMemberReportMeeting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../model/reportActivity.dart';
import '../model/reportMeeting.dart';
import '../model/reportActivity.dart';

import '../model/reportMeeting.dart';
class boardMemberReportTabbar extends StatefulWidget {
  const boardMemberReportTabbar({Key? key}) : super(key: key);

  @override
  State<boardMemberReportTabbar> createState() => _boardMemberReportTabbarState();
}

class _boardMemberReportTabbarState extends State<boardMemberReportTabbar> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFCDFFED),
      appBar: AppBar(
        backgroundColor: Color(0xFF06FFA5),
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Report",
                    style: TextStyle(
                        fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0xFF06FFA5),
                ),
                child: Column(
                  children: [
                    TabBar(
                      unselectedLabelColor: Colors.black87,
                      labelColor: Colors.black87,
                      indicator: BoxDecoration(
                        color : Color(0xFF00C07B),
                      ),
                      controller: tabController,
                      tabs: [
                        Tab(text: 'Activity',),
                        Tab(text: 'Meeting',)
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: TabBarView(
                controller: tabController,
                children: [
                  boardMemberReportActivity(),
                  boardMemberReportMeeting(),
                ],
              ))
            ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
          spacing: 8,
          spaceBetweenChildren: 8,
          backgroundColor: Color(0xFF00C07B),
          animatedIcon: AnimatedIcons.menu_close,
          overlayOpacity: 0.2,
          overlayColor: Color(0xFF00452C),
          children: [
            SpeedDialChild(
              child: Icon(Icons.post_add, color:Color(0xFF00C07B),),
              label : 'Activity Report',
              onTap: () => showDialog(context: context, builder: (context)=>
              AlertDialog(
                backgroundColor: Color(0xFF91FDDD),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Activity Report",style: TextStyle(fontSize: 16),),
                      TextField(
                        maxLines: null,
                        decoration:  InputDecoration(
                          hintText: "Enter Report Title ",
                          labelText: "Report Title",
                          labelStyle: TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      TextField(
                        maxLines: null,
                        decoration:  InputDecoration(
                          hintText: "Enter Activity Highlights",
                          labelText: "Activity Highlights",
                          labelStyle: TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      TextField(
                        maxLines: null,
                        decoration:  InputDecoration(
                          hintText: "Enter Report Title ",
                          labelText: "Report Title",
                          labelStyle: TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                      TextField(
                        maxLines: null,
                        decoration:  InputDecoration(
                          hintText: "Enter Activity Summary",
                          labelText: "Activity Summary",
                          labelStyle: TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text("Save",style: TextStyle(color: Color(0xFF008762)),),
                    onPressed: (){
                      var raAdd = reportActivity(12, "Alanya Activity Report","Alanya Activity Highlight", "Alanya Activity Summary");
                      raList.add(raAdd);
                      setState(() {
                      });
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
            ),
            SpeedDialChild(
                child: Icon(Icons.add_call, color:Color(0xFF00C07B),),
                label : 'Meeting Report',
                onTap: () => showDialog(context: context, builder: (context)=>
                    AlertDialog(
                      backgroundColor: Color(0xFF91FDDD),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text("Create Meeting Report",style: TextStyle(fontSize: 16),),
                            TextField(
                              maxLines: null,
                              decoration:  InputDecoration(
                                hintText: "Enter Meeting Date ",
                                labelText: "Meeting Date",
                                labelStyle: TextStyle(color: Color(0xFF008762),),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                              ),
                            ),
                            TextField(
                              maxLines: null,
                              decoration:  InputDecoration(
                                hintText: "Enter Meeting Content",
                                labelText: "Meeting Content",
                                labelStyle: TextStyle(color: Color(0xFF008762),),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: Text("Save",style: TextStyle(color: Color(0xFF008762)),),
                          onPressed: (){
                            var rmAdd= reportMeeting(10,"Meeting Content","10/05/2022");
                            rmList.add(rmAdd);
                            setState(() {
                            });
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
            ),
          ]
      ),
    );
  }
}
