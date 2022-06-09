
import 'package:akumak_app/pages/activeMemberAnnouncements.dart';
import 'package:akumak_app/pages/activeMemberHomePage.dart';
import 'package:akumak_app/pages/activeMemberProfile.dart';
import 'package:flutter/material.dart';

class activeMemberPage extends StatefulWidget {
  const activeMemberPage({Key? key}) : super(key: key);

  @override
  State<activeMemberPage> createState() => _activeMemberPageState();
}

class _activeMemberPageState extends State<activeMemberPage> {

  var activeMemberPageList = [activeMemberHomePage(),activeMemberAnnouncements(),activeMemberProfile()];

  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFF3E1FF),
      body: activeMemberPageList[pageNumber],
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
        backgroundColor: Color(0xFFA106FF),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xFF30014C),
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
