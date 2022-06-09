import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:akumak_app/model/member.dart';

var mlist = <member>[];

var m1 = member(1, "Agah Berkin Guler","5457778888","Antalya,Konyaalti");
var m2 = member(2, "Kamil Coban","1112223344","Antalya,Calli");
var m3 = member(3, "Member Name Surname","1111111111","Antalya,Kepez");
var m4 = member(4, "Member Name Surname","1111111111","Antalya,Kepez");
var m5 = member(5, "Member Name Surname","1111111111","Antalya,Kepez");
var m6 = member(6, "Member Name Surname","1111111111","Antalya,Kepez");
var m7 = member(7, "Member Name Surname","1111111111","Antalya,Kepez");
var m8 = member(8, "Member Name Surname","1111111111","Antalya,Kepez");
var m9 = member(9, "Member Name Surname","1111111111","Antalya,Kepez");
var m10 = member(10, "Member Name Surname","1111111111","Antalya,Kepez");
var m11 = member(11, "Member Name Surname","1111111111","Antalya,Kepez");
var m12 = member(12, "Member Name Surname","1111111111","Antalya,Kepez");
var m13 = member(13, "Member Name Surname","1111111111","Antalya,Kepez");
var m14 = member(14, "Member Name Surname","1111111111","Antalya,Kepez");
var m15 = member(15, "Member Name Surname","1111111111","Antalya,Kepez");
var m16 = member(16, "Member Name Surname","1111111111","Antalya,Kepez");
var m17 = member(17, "Member Name Surname","1111111111","Antalya,Kepez");
var m18 = member(18, "Member Name Surname","1111111111","Antalya,Kepez");



class boardMemberAdjustmentMember extends StatefulWidget {
  const boardMemberAdjustmentMember({Key? key}) : super(key: key);

  @override
  State<boardMemberAdjustmentMember> createState() =>
      _boardMemberAdjustmentMemberState();
}

class _boardMemberAdjustmentMemberState
    extends State<boardMemberAdjustmentMember> {


  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {


    mlist.add(m1);
    mlist.add(m2);
    mlist.add(m3);
    mlist.add(m4);
    mlist.add(m5);
    mlist.add(m6);
    mlist.add(m7);
    mlist.add(m8);
    mlist.add(m9);
    mlist.add(m10);
    mlist.add(m11);
    mlist.add(m12);
    mlist.add(m13);
    mlist.add(m14);
    mlist.add(m15);
    mlist.add(m16);
    mlist.add(m17);
    mlist.add(m18);

    _editingController = TextEditingController(text: initialText);

    super.initState();
  }

  Future<List<member>> memberData() async {
    var memberList = mlist;
    return memberList;
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
        body: FutureBuilder<List<member>>(
          future: memberData(),
          builder: (context, snapshot){
            if (snapshot.hasData) {
              var memberList = snapshot.data;

              return Center(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: memberList!.length,
                          itemBuilder: (context, index) {
                            var member = memberList[index];
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
                                              left: 10.0, right: 10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(Icons.person, color: Color(0xFF008762),),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text("${member.memberName}",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.w500,
                                                                fontSize: 16),
                                                          ),
                                                        ],
                                                      )
                                                      
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
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                          children: [
                                                            InkWell(
                                                              child: Icon(
                                                                Icons.delete,
                                                                color: Color(
                                                                    0xFF008762),
                                                              ),
                                                              onTap: () {
                                                                member = memberList.removeAt(index);
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
                                                                color: Color(
                                                                    0xFF008762),
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
                                                                                      hintText: "Enter Member Name ",
                                                                                      labelText: "Member Name",
                                                                                      labelStyle: TextStyle(
                                                                                        color: Color(0xFF008762),
                                                                                      ),
                                                                                      floatingLabelBehavior:
                                                                                      FloatingLabelBehavior.always,
                                                                                    ),
                                                                                    controller:
                                                                                    TextEditingController(
                                                                                        text: "${member.memberName}"),
                                                                                  ),
                                                                                  TextField(
                                                                                    keyboardType: TextInputType.phone,
                                                                                    maxLength: 10,
                                                                                    decoration:
                                                                                    InputDecoration(
                                                                                      hintText:
                                                                                      "Enter Member Phone",
                                                                                      labelText:
                                                                                      "Member Phone",
                                                                                      labelStyle:
                                                                                      TextStyle(
                                                                                        color:
                                                                                        Color(0xFF008762),
                                                                                      ),
                                                                                      prefixText: "+90",
                                                                                      floatingLabelBehavior:
                                                                                      FloatingLabelBehavior.always,
                                                                                      counterText: '',
                                                                                    ),
                                                                                    controller:
                                                                                    TextEditingController(
                                                                                        text: "${member.memberPhone}"),
                                                                                  ),
                                                                                  TextField(
                                                                                    decoration:
                                                                                    InputDecoration(
                                                                                      hintText:
                                                                                      "Enter Member Address",
                                                                                      labelText:
                                                                                      "Member Address",
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
                                                                                        text: "${member.memberAddress}"),
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
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )

                                ],
                              ),
                            );
                          }
                      ),
                    ),

                  ],
                ),
              );

            }
            else{
              return Center(
                child: Text("Error"),
              );
            }
          },
        )
    );

  }
}
