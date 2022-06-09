import 'package:akumak_app/pages/boardMemberAdjustmentEvent.dart';
import 'package:akumak_app/pages/boardMemberAdjustmentMember.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../model/event.dart';
import '../model/member.dart';

class boardMemberAdjustmentTabbar extends StatefulWidget {
  const boardMemberAdjustmentTabbar({Key? key}) : super(key: key);

  @override
  State<boardMemberAdjustmentTabbar> createState() => _boardMemberAdjustmentTabbarState();
}

class _boardMemberAdjustmentTabbarState extends State<boardMemberAdjustmentTabbar> with SingleTickerProviderStateMixin {

  late TabController tabController;

  // final isDialOpen = ValueNotifier(false);

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
                    "Adjustment",
                    style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w400),
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
                        Tab(text: 'Event',),
                        Tab(text: 'Member',)
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: TabBarView(
                controller: tabController,
                  children: [
                    boardMemberAdjustmentEvent(),
                    boardMemberAdjustmentMember(),
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
              child: Icon(Icons.event, color:Color(0xFF00C07B),),
              label : 'Event',
              onTap: () => showDialog(context: context, builder: (context)=>
              AlertDialog(
                backgroundColor: Color(0xFF91FDDD),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Create Event",style: TextStyle(fontSize: 16
                      ),),
                      TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Enter Event Name",
                          labelText: "Name",
                          labelStyle:TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior:FloatingLabelBehavior.always,
                        ),
                      ),TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Event Date",
                          labelText: "Date",
                          labelStyle:TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior:FloatingLabelBehavior.always,
                        ),
                      ),
                      TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Enter Event Venue",
                          labelText: "Venue",
                          labelStyle:TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior:FloatingLabelBehavior.always,
                        ),
                      ),
                      TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Enter Event Detail",
                          labelText: "Detail",
                          labelStyle:TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior:FloatingLabelBehavior.always,
                        ),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text("Save",style: TextStyle(color: Color(0xFF008762)),),
                    onPressed: (){
                      var eAdd = event(12,"Antalya Kemer Magaralari","10/07/2022","Kemer,Antalya","Antalya Kemer Magaralari Ziyaret Edildi.");
                      eList.add(eAdd);
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
              ))
            ),
            SpeedDialChild(
                child: Icon(Icons.person_add, color:Color(0xFF00C07B),),
                label : 'Member',
              onTap: () => showDialog(context: context, builder: (context) =>
              AlertDialog(
                backgroundColor: Color(0xFF91FDDD),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Create Member",style: TextStyle(fontSize: 16
                      ),),
                      TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Enter Member Name",
                          labelText: "Name",
                          labelStyle:TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior:FloatingLabelBehavior.always,
                        ),
                      ),TextField(
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: "Enter Member Phone",
                          labelText: "Phone",
                          labelStyle:TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior:FloatingLabelBehavior.always,
                        ),
                      ),
                      TextField(
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Enter Member Address",
                          labelText: "Address",
                          labelStyle:TextStyle(color: Color(0xFF008762),),
                          floatingLabelBehavior:FloatingLabelBehavior.always,
                        ),
                      ),

                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text("Save",style: TextStyle(color: Color(0xFF008762)),),
                    onPressed: (){
                      var mAdd = member(19, "Kerim Can","1111111111","Antalya,Konyaalti");
                      mlist.add(mAdd);
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
              ))
            ),
          ],

        ),
    );
  }
}
