import 'package:akumak_app/pages/boardMemberPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class boardMemberLogin extends StatefulWidget {
  const boardMemberLogin({Key? key}) : super(key: key);

  @override
  State<boardMemberLogin> createState() => _boardMemberLoginState();
}

class _boardMemberLoginState extends State<boardMemberLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFCDFFED),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120.0,),
                child: Text("Board\nMember",style: TextStyle(fontSize: 70,color: Color(0xFF06FFA5),),),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: new Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xFFB4FFE4),
                      primaryColorDark: Color(0xFFB4FFE4),
                    ),
                    child: SizedBox(
                      width: 320,
                      child: new TextField(
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFB4FFE4),
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: new BorderSide(color: Colors.black87)),
                          //hintText: 'Tell us about yourself',
                          //helperText: 'Keep it short, this is just a demo.',
                          labelText: 'User Name',labelStyle: TextStyle(color: Colors.black87,),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0xFF037F52),
                          ),
                          //prefixText: '',
                          //suffixText: '',
                          //suffixStyle: const TextStyle(color: Colors.green)
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: new Theme(
                    data: new ThemeData(
                      primaryColor: Color(0xFF06FFA5),
                      primaryColorDark: Color(0xFF06FFA5),
                    ),
                    child: SizedBox(
                      width: 320,
                      child: new TextField(
                        obscureText: true,
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFB4FFE4),
                          border: new OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: new BorderSide(color: Colors.black87)),
                          //hintText: 'Tell us about yourself',
                          //helperText: 'Keep it short, this is just a demo.',
                          labelText: 'Password',labelStyle: TextStyle(color: Colors.black87,),
                          prefixIcon: const Icon(
                            Icons.key,
                            color: Color(0xFF037F52),
                          ),
                          //prefixText: '',
                          //suffixText: '',
                          //suffixStyle: const TextStyle(color: Colors.green)
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,left: 200.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF06FFA5),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15.0),)
                  ),
                  child: Text("Login",style: TextStyle(fontSize: 17),),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => boardMemberPage()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 275.0,top:15.0),
                child: Ink(
                  decoration: const ShapeDecoration(
                    color: Color(0xFF06FFA5),
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.info_outline),
                    color: Colors.white,
                    onPressed: () {
                      showDialog(context: context,
                          builder: (BuildContext context){
                            return AlertDialog(
                              title: Text("Help Title"),
                              content: Text("Help Content"),
                              actions: [
                                TextButton(
                                  child: Text("OK",style: TextStyle(color: Color(0xFF06FFA5),),),
                                  onPressed: (){
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
      ),
    );
  }
}
