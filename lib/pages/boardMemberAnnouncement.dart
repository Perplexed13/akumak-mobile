import 'package:flutter/material.dart';

import 'package:akumak_app/model/announcement.dart';

class boardMemberAnnouncement extends StatefulWidget {
  const boardMemberAnnouncement({Key? key}) : super(key: key);

  @override
  State<boardMemberAnnouncement> createState() =>
      _boardMemberAnnouncementState();
}

class _boardMemberAnnouncementState extends State<boardMemberAnnouncement> {
  var announList = <announcement>[];

  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var an1 = announcement(1, "Announcemarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexxtT extTe xtTe xtTextT extT extText Text Text");
    var an2 = announcement(2, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an3 = announcement(3, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an4 = announcement(4, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an5 = announcement(5, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an6 = announcement(6, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an7 = announcement(7, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an8 = announcement(8, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an9 = announcement(9, "Announcement for Antalya Magarasi", "18/10/2021",
        "TextTextTextTextTextTextTextTextTextTextText");
    var an10 = announcement(10, "Announcement for Antalya Magarasi",
        "18/10/2021", "TextTextTextTextTextTextTextTextTextTextText");
    var an11 = announcement(11, "Announcement for Antalya Magarasi",
        "18/10/2021", "TextTextTextTextTextTextTextTextTextTextText");
    var an12 = announcement(12, "Announcement for Antalya Magarasi",
        "18/10/2021", "TextTex tTextTextTextTe xtTextTextTextTextText");
    var an13 = announcement(13, "Announcement for Antalya Magarasi",
        "18/10/2021", "TextTextTextTextTextTextTextTextTextTextText");
    var an14 = announcement(14, "Announcement for Antalya Magarasi",
        "18/10/2021", "TextTextTextTextTextTextTextTextTextTextText");

    announList.add(an1);
    announList.add(an2);
    announList.add(an3);
    announList.add(an4);
    announList.add(an5);
    announList.add(an6);
    announList.add(an7);
    announList.add(an8);
    announList.add(an9);
    announList.add(an10);
    announList.add(an11);
    announList.add(an12);
    announList.add(an13);
    announList.add(an14);

    _editingController = TextEditingController(text: initialText);
  }

  Future<List<announcement>> announcementData() async {
    var announcementList = announList;
    return announcementList;
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
      body: FutureBuilder<List<announcement>>(
        future: announcementData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var announcementsList = snapshot.data;

            return Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF06FFA5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Announcement",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: announcementsList!.length,
                      itemBuilder: (context, index) {
                        var announcement = announcementsList[index];
                        return Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10.0),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "${announcement.announcementName}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 35,
                                                width: 60,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
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
                                                            announcement=announcementsList.removeAt(index);
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
                                                            builder:
                                                                (context) =>
                                                                    AlertDialog(
                                                              backgroundColor:
                                                                  Color(
                                                                      0xFF91FDDD),
                                                              content:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: <
                                                                      Widget>[
                                                                    TextField(
                                                                      maxLines: null,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "Enter Announcement Title",
                                                                        labelText:
                                                                            "Announcement Title",
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
                                                                              text: "${announcement.announcementName}"),
                                                                    ),
                                                                    TextField(
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            "Announcement Date",
                                                                        labelText:
                                                                            "Date",
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
                                                                              text: "${announcement.announcementDate}"),
                                                                    ),
                                                                    Column(
                                                                      children: [
                                                                        TextField(
                                                                          maxLines: null,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            hintText:
                                                                                "Announcement Content",
                                                                            labelText:
                                                                                "Content",
                                                                            labelStyle:
                                                                                TextStyle(
                                                                              color: Color(0xFF008762),
                                                                            ),
                                                                            floatingLabelBehavior:
                                                                                FloatingLabelBehavior.always,
                                                                          ),
                                                                          controller:
                                                                              TextEditingController(text: "${announcement.announcementText}"),
                                                                        ),
                                                                        // Text(
                                                                        //   "${announcement.announcementText}",
                                                                        //   style: TextStyle(fontSize: 16),
                                                                        // ),
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
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "${announcement.announcementDate}",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Text("Error"),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(context: context, builder: (context) =>
        AlertDialog(
            backgroundColor: Color(0xFF91FDDD),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Text("Create Announcement",style: TextStyle(fontSize: 16
                ),),
                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Enter Announcement Title",
                    labelText: "Title",
                    labelStyle:TextStyle(color: Color(0xFF008762),),
                    floatingLabelBehavior:FloatingLabelBehavior.always,
                  ),
                ),
                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Enter Announcement Date",
                    labelText: "Date",
                    labelStyle:TextStyle(color: Color(0xFF008762),),
                    floatingLabelBehavior:FloatingLabelBehavior.always,
                  ),
                ),
                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Enter Announcement Content",
                    labelText: "Content",
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
                var anAdd = announcement(11, "Announcement for Molla Deligi",
                    "18/05/2022", "Announcement for Molla DeligiAnnouncement for Molla Deligi");
                announList.add(anAdd);
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
        )),
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF00C07B),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
// Future editAnnouncementName(announcement editAnnouncement) async{
//     final announcementName = await showTextDialog(
//       context,
//       value: editAnnouncement.announcementName,
//     );
//
//     setState(() => announList = announList.map((e) {
//       final isEditedAnnoun = e ==editAnnouncement;
//       return isEditedAnnoun ? e.copy(announcementName: announcementName): e;
//     }).toList());
// }
//https://github.com/JohannesMilke/datatable_editable_example
//https://www.youtube.com/watch?v=D6yndJ_lk14

//Padding(
//                     padding: const EdgeInsets.only(bottom: 8.0),
//                     child: FloatingActionButton(
//                       onPressed: (){
//                       },
//                       backgroundColor:  Color(0xFF00C07B),
//                       child: Icon(Icons.add),
//
//                     ),
//                   )
}
