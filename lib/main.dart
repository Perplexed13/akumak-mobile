import 'package:akumak_app/activeMemberLogin.dart';
import 'package:akumak_app/pages/trainerLogin.dart';
import 'package:flutter/material.dart';

import 'boardMemberLogin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AKUMAK demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFEEC),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 120.0, bottom: 40.0),
                child: RichText(
                  text: TextSpan(
                      text: 'AK',
                      style: TextStyle(color: Color(0xFF06FFA5), fontSize: 60),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'UM',
                          style: TextStyle(
                            color: Color(0xFF06C3FF),
                          ),
                        ),
                        TextSpan(
                          text: 'AK',
                          style: TextStyle(
                            color: Color(0xFFA106FF),
                          ),
                        )
                      ]),
                )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 70,
                width: 325,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/icons/caveman.png',
                        height: 32,
                        width: 32,
                      ),
                      Spacer(),
                      Text(
                        "\tLogin as Board Member",
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                      Spacer(),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => boardMemberLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF06FFA5),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 70,
                width: 325,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/icons/rope.png',
                        height: 32,
                        width: 32,
                      ),
                      Spacer(),
                      Text(
                        "\tLogin as Trainer",
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                      Spacer(),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => trainerLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF06C3FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 70,
                width: 325,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Image.asset(
                        'lib/icons/flashlight.png',
                        height: 32,
                        width: 32,
                      ),
                      Spacer(),
                      Text(
                        "\tLogin as Active Member",
                        style: TextStyle(fontSize: 22, color: Colors.black87),
                      ),
                      Spacer(),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => activeMemberLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFA106FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      )),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Row(
                  children: [
                    Spacer(flex: 1,),
                    Image.asset(
                      'lib/icons/binoculars.png',
                      height: 32,
                      width: 32,
                    ),
                    Spacer(flex: 1,),
                    TextButton(
                      child: Text(
                        "  Continue as Visitor",
                        style: TextStyle(fontSize: 21, color: Colors.black87),
                      ),
                      onPressed: () {},
                    ),
                    Spacer(flex: 4,),
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 275.0),
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.black54,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.info_outline),
                  color: Colors.white,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Help Title"),
                            content: Text("Help Content"),
                            actions: [
                              TextButton(
                                child: Text(
                                  "OK",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
