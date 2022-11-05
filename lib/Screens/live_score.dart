import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Widgets/BackgroundImage.dart';
import 'package:t20_worldcup_app/Widgets/CoustamAppBare.dart';

class liveScoreScreen extends StatelessWidget {
  const liveScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(Title: 'Live Score'),
      body: BackgroundImage(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [

          ],
        ),
      ),
    );
  }
}
