import 'package:akumak_app/pages/activeMemberAnnouncements.dart';
import 'package:flutter/material.dart';
class activeMemberHomePageArticles extends StatefulWidget {
  const activeMemberHomePageArticles({Key? key}) : super(key: key);

  @override
  State<activeMemberHomePageArticles> createState() => _activeMemberHomePageArticlesState();
}

class _activeMemberHomePageArticlesState extends State<activeMemberHomePageArticles> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: activeMemberAnnouncements(),
    );
  }
}
