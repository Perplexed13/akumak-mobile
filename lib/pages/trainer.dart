import 'package:flutter/material.dart';
import 'package:akumak_app/controller/trainerHomePageTabbar.dart';
class trainer extends StatefulWidget {
  const trainer({Key? key}) : super(key: key);

  @override
  State<trainer> createState() => _trainerState();
}

class _trainerState extends State<trainer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: trainerHomePageTabbar(),
    );
  }
}
