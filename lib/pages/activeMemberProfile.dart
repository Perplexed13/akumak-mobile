
import 'package:akumak_app/pages/activeMemberLogin.dart';
import 'package:flutter/material.dart';

class activeMemberProfile extends StatefulWidget {
  const activeMemberProfile({Key? key}) : super(key: key);    

  @override
  State<activeMemberProfile> createState() => _activeMemberProfileState();
}

class _activeMemberProfileState extends State<activeMemberProfile> {

  bool _isEditingText = false;
  late TextEditingController _editingController;
  String initialText = "Initial Text";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _editingController = TextEditingController(text: initialText);
  }

  @override
  void dispose() {
    _editingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3E1FF),
      body: SingleChildScrollView(
        child: Center(
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
                          Text("Profile",style: TextStyle(fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0,bottom: 12.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Color(0xFFA106FF),
                            )
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("lib/images/ed.jpg"),
                            maxRadius: 60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:80.0,left:83.0),
                          child: IconButton(
                            icon: Container(
                              height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFA106FF),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 2,
                                        color: Color(0xFFA106FF),
                                    )
                                ),child: Icon(Icons.edit,color: Colors.white,)),
                            onPressed: (){
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: TextEditingController(text: "Agah Berkin"),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE8C3FF),
                        border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: new BorderSide(color: Color(0xFF610395))),
                        labelText: "Name",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter Name",
                        suffixIcon: Icon( Icons.edit, color: Color(0xFF8A49B2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: TextEditingController(text: "Guler"),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE8C3FF),
                        border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: new BorderSide(color: Color(0xFF610395))),
                        labelText: "Surname",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter Surname",
                        suffixIcon: Icon( Icons.edit, color: Color(0xFF8A49B2),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // SizedBox(
                  //   width: 300,
                  //   child: TextField(
                  //     obscureText: secureText,
                  //     decoration: InputDecoration(
                  //       filled: true,
                  //       fillColor: Color(0xFFE8C3FF),
                  //       border: new OutlineInputBorder(
                  //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //           borderSide: new BorderSide(color: Color(0xFF610395))),
                  //       labelText: "Password",
                  //       floatingLabelBehavior: FloatingLabelBehavior.always,
                  //       hintText: "*******",
                  //       suffixIcon: InkWell(
                  //         onTap: (){
                  //           setState(() {
                  //             secureText = !secureText;
                  //           });
                  //         },
                  //         child: Icon( Icons.remove_red_eye, color: Color(0xFF8A49B2),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      controller: TextEditingController(text: "5457778888"),
                      maxLength: 10,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE8C3FF),
                        border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: new BorderSide(color: Color(0xFF610395))),
                        labelText: "Phone",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        counterText: '',
                        hintText: "Enter Phone",
                        prefixText: "+90",
                        suffixIcon: Icon( Icons.edit, color: Color(0xFF8A49B2),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller: TextEditingController(text: "Antalya, Konyaalti"),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFE8C3FF),
                        border: new OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: new BorderSide(color: Color(0xFF610395))),
                        labelText: "Address",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: "Enter Address",
                        suffixIcon: Icon( Icons.edit, color: Color(0xFF8A49B2),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 220.0),
                    child: SizedBox(
                      height: 40,
                      width: 80,
                      child: ElevatedButton(
                        child: Row(
                          children: [
                            Text("Log out")
                          ],
                        ),
                        onPressed: (){
                          Navigator.of(context, rootNavigator: true).pushReplacement(//cikis yapiyo ama geriye iki kez basmak gerrekiyor ve ayrica maine atamiyorum
                              (MaterialPageRoute(builder: (context) => activeMemberLogin())));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFA106FF),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
