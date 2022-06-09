import 'package:flutter/material.dart';

import '../controller/boardMemberReportTabbar.dart';
class boardMemberReports extends StatefulWidget {
  const boardMemberReports({Key? key}) : super(key: key);

  @override
  State<boardMemberReports> createState() => _boardMemberReportsState();
}

class _boardMemberReportsState extends State<boardMemberReports> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: boardMemberReportTabbar(),
    );
  }
}
