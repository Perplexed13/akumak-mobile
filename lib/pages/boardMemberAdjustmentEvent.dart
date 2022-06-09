import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/event.dart';

var eList = <event>[];

var e1 = event(1,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e2 = event(2,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e3 = event(3,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e4 = event(4,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e5 = event(5,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e6 = event(6,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e7 = event(7,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e8 = event(8,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e9 = event(9,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e10 = event(10,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");
var e11 = event(11,"Molla Deligi","10/03/2022","Kemer,Antalya","Molla Deligi Ziyaret Edildi.");


class boardMemberAdjustmentEvent extends StatefulWidget {
  const boardMemberAdjustmentEvent({Key? key}) : super(key: key);

  @override
  State<boardMemberAdjustmentEvent> createState() =>
      _boardMemberAdjustmentEventState();
}
class _boardMemberAdjustmentEventState extends State<boardMemberAdjustmentEvent> {


  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {

    eList.add(e1);
    eList.add(e2);
    eList.add(e3);
    eList.add(e4);
    eList.add(e5);
    eList.add(e6);
    eList.add(e7);
    eList.add(e8);
    eList.add(e9);
    eList.add(e10);
    eList.add(e11);

    _editingController = TextEditingController(text: initialText);

    super.initState();
  }

  Future<List<event>> eventData() async {
    var eventList = eList;
    return eventList;
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
        body: FutureBuilder<List<event>>(
          future: eventData(),
          builder: (context, snapshot){
            if (snapshot.hasData) {
              var eventList = snapshot.data;
              return Center(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: eventList!.length,
                          itemBuilder: (context, index) {
                            var event = eventList[index];
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
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text("${event.eventName}",
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
                                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                                                event = eventList.removeAt(index);
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
                                                                                hintText: "Enter Event Name",
                                                                                labelText: "Event Title",
                                                                                labelStyle: TextStyle(
                                                                                  color: Color(0xFF008762),
                                                                                ),
                                                                                floatingLabelBehavior:
                                                                                FloatingLabelBehavior.always,
                                                                              ),
                                                                              controller:
                                                                              TextEditingController(
                                                                                  text: "${event.eventName}"),
                                                                            ),
                                                                            TextField(
                                                                              decoration:
                                                                              InputDecoration(
                                                                                hintText:
                                                                                "Enter Event Date",
                                                                                labelText:
                                                                                "Event Date",
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
                                                                                  text: "${event.eventDate}"),
                                                                            ),
                                                                            TextField(
                                                                              decoration:
                                                                              InputDecoration(
                                                                                hintText:
                                                                                "Enter Event Venue",
                                                                                labelText:
                                                                                "Event Venue",
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
                                                                                  text: "${event.eventVenue}"),
                                                                            ),
                                                                            Column(
                                                                              children: [
                                                                                TextField(
                                                                                  maxLines: null,
                                                                                  decoration:
                                                                                  InputDecoration(
                                                                                    hintText:
                                                                                    "Enter Event Detail",
                                                                                    labelText:
                                                                                    "Event Detail",
                                                                                    labelStyle:
                                                                                    TextStyle(
                                                                                      color: Color(0xFF008762),
                                                                                    ),
                                                                                    floatingLabelBehavior:
                                                                                    FloatingLabelBehavior.always,
                                                                                  ),
                                                                                  controller:
                                                                                  TextEditingController(text: "${event.eventDetail}"),
                                                                                ),
                                                                              ],
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
                                              Row(
                                                children: [
                                                  Text(
                                                    "${event.eventDate}",
                                                    style: TextStyle(fontSize: 10),
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
        ),
    );
  }
}
