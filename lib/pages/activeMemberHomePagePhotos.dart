import 'package:akumak_app/model/photos.dart';
import 'package:flutter/material.dart';


class activeMemberHomePagePhotos extends StatefulWidget {
  const activeMemberHomePagePhotos({Key? key}) : super(key: key);

  @override
  State<activeMemberHomePagePhotos> createState() => _activeMemberHomePagePhotosState();
}

class _activeMemberHomePagePhotosState extends State<activeMemberHomePagePhotos> {

  var phoList = <photos>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var photo1 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo2 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo3 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo4 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo5 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo6 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo7 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo8 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo9 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo10 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo11 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo12 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo13 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo14 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo15 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo16 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo17 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");
    var photo18 = photos(1,'lib/photos/photo1.png',"22/10/2021","Antalya","Antalya Magarasi Kesfi");




    phoList.add(photo1);
    phoList.add(photo2);
    phoList.add(photo3);
    phoList.add(photo4);
    phoList.add(photo5);
    phoList.add(photo6);
    phoList.add(photo7);
    phoList.add(photo8);
    phoList.add(photo9);
    phoList.add(photo10);
    phoList.add(photo11);
    phoList.add(photo12);
    phoList.add(photo13);
    phoList.add(photo14);
    phoList.add(photo15);
    phoList.add(photo16);
    phoList.add(photo17);
    phoList.add(photo18);

  }

  Future<List<photos>> photoData() async {
    var photoList = phoList;
    return photoList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E1FF),
      body: FutureBuilder<List<photos>>(

        future: photoData(),
        builder: (context,snapshot){

          if(snapshot.hasData){
            var photoList = snapshot.data;

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
                              Text("Photos",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 5/3,
                      ),
                      itemCount: photoList!.length,
                      itemBuilder: (context,index){
                        var photos = photoList[index];
                        return Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                                child: Card(
                                  color: Color(0xFFE8C3FF),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Ink.image(
                                            image: AssetImage(
                                                "${photos.photoPic}"
                                            ),
                                            child: InkWell(
                                              onTap: () => showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                  backgroundColor: Color(0xFFF3E1FF),
                                                  content: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Stack(
                                                        children: [
                                                          Image.asset(
                                                            "${photos.photoPic}",
                                                            height: 250,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        "${photos.photoEvent}\n"
                                                            "${photos.photoPlace}\t\t\t\t"
                                                            "${photos.photoDate}",
                                                        style: TextStyle(
                                                          fontSize: 24,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            height: 73,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8).copyWith(bottom: 0),
                                        child: Text("${photos.photoPlace} ${photos.photoDate}",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ],
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
                              Text("Photos",style: TextStyle(fontSize: 20,color: Colors.white),),
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
