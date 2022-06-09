import 'package:akumak_app/pages/trainerEquipment.dart';
import 'package:akumak_app/pages/trainerLogin.dart';
import 'package:akumak_app/pages/trainerTraining.dart';
import 'package:flutter/material.dart';

class trainerHomePageTabbar extends StatefulWidget {
  const trainerHomePageTabbar({Key? key}) : super(key: key);

  @override
  State<trainerHomePageTabbar> createState() => _trainerHomePageTabbarState();
}

class _trainerHomePageTabbarState extends State<trainerHomePageTabbar> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFCDF3FF),
      appBar: AppBar(
        bottom:TabBar(
          unselectedLabelColor: Colors.black87,
          labelColor: Colors.black87,
          indicator: BoxDecoration(
            color : Color(0xFF06C3FF),
          ),
          controller: tabController,
          tabs: [
            Tab(text: 'Equipment',),
            Tab(text: 'Training',)
          ],
        ) ,
        backgroundColor: Color(0xFFCDF3FF),
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end ,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Documents",
                      style: TextStyle(
                          fontSize: 20, color: Colors.black87,fontWeight: FontWeight.w400),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end ,
                    children: [
                      PopupMenuButton(
                        child: Icon(Icons.more_vert, color: Colors.black87,),
                        itemBuilder: (context)=>[
                          PopupMenuItem(
                            value: 1,
                            child: Text("Logout"),
                          )
                        ],
                        onSelected: (menuItemValue){
                          if(menuItemValue == 1){
                            Navigator.of(context, rootNavigator: true).pushReplacement(//cikis yapiyo ama geriye iki kez basmak gerrekiyor ve ayrica maine atamiyorum
                                (MaterialPageRoute(builder: (context) => trainerLogin())));
                          }
                        },
                      )
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    trainerEquipment(),
                    trainerTraining(),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
