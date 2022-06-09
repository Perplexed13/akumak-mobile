
import 'package:akumak_app/pages/activeMemberHomePageParticipations.dart';
import 'package:akumak_app/pages/activeMemberHomePagePhotos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/activeMemberHomePageArticles.dart';

class activeMemberHomePage extends StatefulWidget {
  const activeMemberHomePage({Key? key}) : super(key: key);

  @override
  State<activeMemberHomePage> createState() => _activeMemberHomePageState();
}

class _activeMemberHomePageState extends State<activeMemberHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFF3E1FF),
      body: Center(
        child: Column(
          children: [
             Container(
              padding: EdgeInsets.only(top:40,left:30),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Color(0xFFA106FF),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("lib/images/ed.jpg"),
                        maxRadius: 50,
                      ),
                      Spacer(flex: 1),
                      Text("Welcome\nAgah Berkin Guler",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.white),),
                      Spacer(flex: 4,),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.only( left:16.0, right:16.0),
                  child: ListView(
                    children: [
                      buildCardParticipations(),
                      SizedBox(
                        height: 20,
                      ),
                      buildCardPhotos(),
                      SizedBox(
                        height: 20,
                      ),
                      buildCardArticles(),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardParticipations() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 85,
          right: 16,
          left: 16,
          child: Text(
            'Participations',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Ink.image(
          image: AssetImage(
            "lib/photos/photo1.png"
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => activeMemberHomePageParticipations()));
            },
          ),
          height: 125,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
  Widget buildCardPhotos() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 85,
          right: 16,
          left: 16,
          child: Text(
            'Photos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Ink.image(
          image: AssetImage(
              "lib/photos/photo2.png"
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => activeMemberHomePagePhotos()));
            },
          ),
          height: 125,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
  Widget buildCardArticles() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        // Container(
        //   width: double.infinity,
        //   height: 30,
        //   color: Color(0xFFA106FF),
        // ),
        Positioned(
          bottom: 85,
          right: 16,
          left: 16,
          child: Text(
            'Articles',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Ink.image(
          image: AssetImage(
              "lib/photos/photo3.jpg"
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => activeMemberHomePageArticles()));
            },
          ),
          height: 125,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

