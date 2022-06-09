import 'package:akumak_app/controller/boardMemberAdjustmentTabbar.dart';
import 'package:flutter/material.dart';
class boardMemberAdjustment extends StatefulWidget {
  const boardMemberAdjustment({Key? key}) : super(key: key);

  @override
  State<boardMemberAdjustment> createState() => _boardMemberAdjustmentState();
}

class _boardMemberAdjustmentState extends State<boardMemberAdjustment> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: boardMemberAdjustmentTabbar(),
    );
  }
}
