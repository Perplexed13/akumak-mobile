import 'package:akumak_app/controller/boardMemberOthersTabbar.dart';
import 'package:flutter/material.dart';
class boardMemberOthers extends StatefulWidget {
  const boardMemberOthers({Key? key}) : super(key: key);

  @override
  State<boardMemberOthers> createState() => _boardMemberOthersState();
}

class _boardMemberOthersState extends State<boardMemberOthers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: boardMemberOthersTabbar(),
    );
  }
}
