import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Widgets/BackgroundImage.dart';
import 'package:t20_worldcup_app/Widgets/CoustamAppBare.dart';

class HighlightsScreen extends StatelessWidget {
  const HighlightsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(Title: 'Highlights '),
      body: BackgroundImage(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [

          ],
        ),
      ),
    );
  }
}
