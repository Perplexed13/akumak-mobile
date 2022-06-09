import 'package:akumak_app/model/announcement.dart';
import 'package:flutter/material.dart';

class activeMemberAnnouncements extends StatefulWidget {
  const activeMemberAnnouncements({Key? key}) : super(key: key);

  @override
  State<activeMemberAnnouncements> createState() =>
      _activeMemberAnnouncementsState();
}

class _activeMemberAnnouncementsState extends State<activeMemberAnnouncements> {

  var announList = <announcement>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var an1 = announcement(1,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexextTextTextTextTextTextTexxtT extTe xtTe xtTextT extT extText Text Text");
    var an2 = announcement(2,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an3 = announcement(3,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an4 = announcement(4,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an5 = announcement(5,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an6 = announcement(6,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an7 = announcement(7,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an8 = announcement(8,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an9 = announcement(9,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an10 = announcement(10,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an11 = announcement(11,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an12 = announcement(12,"Announcement for Antalya Magarasi","18/10/2021","TextTex tTextTextTextTe xtTextTextTextTextText");
    var an13 = announcement(13,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");
    var an14 = announcement(14,"Announcement for Antalya Magarasi","18/10/2021","TextTextTextTextTextTextTextTextTextTextText");

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
  }

  Future<List<announcement>> announcementData() async {
    var announcementList = announList;
    return announcementList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3E1FF),
      body: FutureBuilder<List<announcement>>(

        future: announcementData(),
        builder: (context,snapshot){

          if(snapshot.hasData){
            var announcementsList = snapshot.data;

            return Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFFA106FF),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Announcement",style: TextStyle(fontSize: 20,color: Colors.white),),
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
                      itemBuilder: (context,index){
                        var announcement = announcementsList[index];
                        return Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                                child: SizedBox(
                                  height: 60,
                                  width: 370,
                                  child: InkWell(
                                    onTap: () => showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      backgroundColor: Color(0xFFF3E1FF),

                                      content: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text("${announcement.announcementName}\n",style: TextStyle(fontSize: 32, ),),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("${announcement.announcementDate}",style: TextStyle(fontSize: 12),),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text("${announcement.announcementText}", style: TextStyle(fontSize: 16),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                    child: Card(
                                      color: Color(0xFFE8C3FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10.0,right: 10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text("${announcement.announcementName}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("${announcement.announcementDate}",style: TextStyle(fontSize: 10),)
                                              ],
                                            )
                                          ],
                                        ),
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
          }
          else{
            return Center(
              child: Text(
                  "ERROR"
              ),
            );
          }
        },
      )
    );
  }
}