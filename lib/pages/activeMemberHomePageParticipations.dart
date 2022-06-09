import 'package:akumak_app/model/participations.dart';
import 'package:flutter/material.dart';

class activeMemberHomePageParticipations extends StatefulWidget {
  const activeMemberHomePageParticipations({Key? key}) : super(key: key);

  @override
  State<activeMemberHomePageParticipations> createState() => _activeMemberHomePageParticipationsState();
}

class _activeMemberHomePageParticipationsState extends State<activeMemberHomePageParticipations> {

  var partList = <participations>[];

  @override
  void initState() {
    super.initState();


    var p1=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p2=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p3=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p4=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p5=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p6=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p7=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p8=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p9=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");
    var p10=participations(1,"Antalya Magarasi Kesfi","22/10/2021","Antalya");

    partList.add(p1);
    partList.add(p2);
    partList.add(p3);
    partList.add(p4);
    partList.add(p5);
    partList.add(p6);
    partList.add(p7);
    partList.add(p8);
    partList.add(p9);
    partList.add(p10);
  }


  Future<List<participations>> participationData() async {
    var participationList = partList;
    return participationList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E1FF),
      body: FutureBuilder<List<participations>>(

        future: participationData(),
        builder: (context,snapshot){

          if(snapshot.hasData){
            var participationList = snapshot.data;

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
                              Text("Participations",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: participationList!.length,
                      itemBuilder: (context,index){
                        var participation = participationList[index];
                        return Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
                                child: SizedBox(
                                  height: 60,
                                  width: 370,
                                  child: InkWell(
                                    onTap: (){
                                      print("ontap");
                                    },
                                    child: Card(
                                      color: Color(0xFFE8C3FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10.0,right: 10.0),
                                        child: Row(
                                          children: [
                                            Text("${participation.participationName} \n"
                                                "${participation.participationDate}"),
                                            Spacer(),
                                            Text("${participation.participationVenue}")
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
                  Text("ERROR"),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
