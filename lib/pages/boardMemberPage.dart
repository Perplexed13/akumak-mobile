import 'package:akumak_app/pages/boardMemberAdjustment.dart';
import 'package:akumak_app/pages/boardMemberAnnouncement.dart';
import 'package:akumak_app/pages/boardMemberCave.dart';
import 'package:akumak_app/pages/boardMemberOthers.dart';
import 'package:akumak_app/pages/boardMemberReports.dart';
import 'package:flutter/material.dart';
class boardMemberPage extends StatefulWidget {
  const boardMemberPage({Key? key}) : super(key: key);

  @override
  State<boardMemberPage> createState() => _boardMemberPageState();
}

class _boardMemberPageState extends State<boardMemberPage> {

  var boardMemberPageList = [boardMemberAnnouncement(),boardMemberAdjustment(),boardMemberCave(),boardMemberReports(),boardMemberOthers()];

  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFCDFFED),
      body: boardMemberPageList[pageNumber],

      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF06FFA5),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xFF00C07B),
        currentIndex: pageNumber,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() {
          pageNumber = index;
        }),
      ),
    );
  }
}
