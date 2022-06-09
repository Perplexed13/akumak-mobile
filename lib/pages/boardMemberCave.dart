import 'package:flutter/material.dart';
import 'package:akumak_app/model/cave.dart';
class boardMemberCave extends StatefulWidget {
  const boardMemberCave({Key? key}) : super(key: key);

  @override
  State<boardMemberCave> createState() => _boardMemberCaveState();
}

class _boardMemberCaveState extends State<boardMemberCave> {
  var cavList = <cave>[];

  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {
    var c1 = cave(1,'lib/photos/photo2.png',"Antalya Magara1","Konyaalti/Antalya");
    var c2 = cave(2,'lib/photos/photo2.png',"Antalya Magara2","Konyaalti/Antalya");
    var c3 = cave(3,'lib/photos/photo2.png',"Antalya Magara3","Konyaalti/Antalya");
    var c4 = cave(4,'lib/photos/photo2.png',"Antalya Magara4","Konyaalti/Antalya");
    var c5 = cave(5,'lib/photos/photo2.png',"Antalya Magara5","Konyaalti/Antalya");
    var c6 = cave(6,'lib/photos/photo2.png',"Antalya Magara6","Konyaalti/Antalya");
    var c7 = cave(7,'lib/photos/photo2.png',"Antalya Magara7","Konyaalti/Antalya");
    var c8 = cave(8,'lib/photos/photo2.png',"Antalya Magara8","Konyaalti/Antalya");
    var c9 = cave(9,'lib/photos/photo2.png',"Antalya Magara9","Konyaalti/Antalya");

    cavList.add(c1);
    cavList.add(c2);
    cavList.add(c3);
    cavList.add(c4);
    cavList.add(c5);
    cavList.add(c6);
    cavList.add(c7);
    cavList.add(c8);
    cavList.add(c9);

    _editingController = TextEditingController(text: initialText);

    super.initState();
  }

  Future<List<cave>> caveData() async {
    var caveList = cavList;
    return caveList;
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
        body: FutureBuilder<List<cave>>(
          future: caveData(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              var caveList = snapshot.data;

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
                                  "Cave",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0,bottom: 5),
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF00C07B),
                              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0.0),)
                          ),
                          onPressed: (){
                          },
                          child: Text(
                            "Add a Cave", style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: caveList!.length,
                          itemBuilder: (context, index){
                          var cave = caveList[index];
                          return Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    child: Column(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            // Positioned(
                                            //   bottom: 85,
                                            //   right: 16,
                                            //   left: 16,
                                            //   child: Text(
                                            //     "${cave.caveName}",
                                            //     style: TextStyle(
                                            //       fontWeight: FontWeight.bold,
                                            //       color: Colors.white,
                                            //       fontSize: 24,
                                            //     ),
                                            //   ),
                                            // ),
                                            Ink.image(
                                              image: AssetImage(
                                                  "${cave.cavePic}"
                                              ),
                                              child: InkWell(
                                                onTap: () => showDialog(
                                                  context: context,
                                                  builder: (context) => AlertDialog(
                                                    backgroundColor: Color(0xFFCDFFED),
                                                    content: Column(
                                                      mainAxisSize: MainAxisSize.min,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: <Widget>[
                                                        Stack(
                                                          children: [
                                                            Image.asset(
                                                              "${cave.cavePic}",
                                                              height: 250,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "${cave.caveName}\n"
                                                              "${cave.cavePlace}\t\t\t\t",
                                                          style: TextStyle(
                                                            fontSize: 24,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              height: 125,
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                          child: Container(
                                            color: Color(0xFF06FFA5),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [

                                                Padding(
                                                  padding: const EdgeInsets.only(left: 10.0),
                                                  child: Text("${cave.caveName}",
                                                    style: TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    InkWell(
                                                        child: Icon(Icons.edit,color: Color(0xFF008762),),
                                                      onTap: () => showDialog(
                                                        context: context,
                                                        builder: (context) => AlertDialog(
                                                          backgroundColor: Color(0xFF91FDDD),
                                                          content: SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize: MainAxisSize.min,
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText: "Enter Cave Name",
                                                                    labelText: "Cave Name",
                                                                    labelStyle: TextStyle(color: Color(0xFF008762)),
                                                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                                                  ),
                                                                  controller: TextEditingController(text: "${cave.caveName}"),
                                                                ),
                                                                TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText: "Enter Cave Place",
                                                                    labelText: "Cave Place",
                                                                    labelStyle: TextStyle(color: Color(0xFF008762)),
                                                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                                                  ),
                                                                  controller: TextEditingController(text: "${cave.cavePlace}"),
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
                                                      ) ,
                                                    ),
                                                    SizedBox(width: 10,),
                                                    InkWell(
                                                        child: Icon(Icons.delete,color: Color(0xFF008762),),
                                                      onTap: (){
                                                          cave = caveList.removeAt(index);
                                                          setState(() {
                                                          });
                                                      },
                                                    ),
                                                    SizedBox(width: 10,),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )

                              ],
                            ),
                          );
                          }

                      ),
                    )
                  ],
                ) ,
              );

            }else{
              return Center(
                child: Text("ERROR"),
              );
            }
          },
        ),
    );
  }
}
