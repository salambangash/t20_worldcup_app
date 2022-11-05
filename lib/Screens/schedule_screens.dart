import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/Data_Api.dart';
import 'package:t20_worldcup_app/Widgets/BackgroundImage.dart';
import 'package:t20_worldcup_app/Widgets/CoustamAppBare.dart';
import 'package:t20_worldcup_app/Widgets/MatchWidgets.dart';
import 'package:t20_worldcup_app/models/Match.dart';


class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CoustomAppBar(Title: 'Schedule'),
        body: BackgroundImage(
            padding: const EdgeInsets.all(10),
            child: FutureBuilder<List<T20Match>>(
              future: MydataApi.getAllMatches(context),
              builder: (BuildContext context,AsyncSnapshot snapshot){

                if(snapshot.hasData)
                  {

                    List<T20Match> matches = snapshot.data;
                    return ListView.builder(
                        itemCount: matches.length,
                        itemBuilder: (context, index){

                          return MatchWidgets(match: matches[index],);

                    });

                  }else
                    {
                      return const Center(child: CircularProgressIndicator());
                    }
              },
            )
        ));
  }
}