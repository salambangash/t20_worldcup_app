import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/Data_Api.dart';
import 'package:t20_worldcup_app/Widgets/BackgroundImage.dart';
import 'package:t20_worldcup_app/Widgets/CoustamAppBare.dart';
import 'package:t20_worldcup_app/Widgets/Team_widgets.dart';
import 'package:t20_worldcup_app/models/Teams_model.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(Title: 'Teams'),
      body: BackgroundImage(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<List<Teams>>(
          future: MydataApi.getAllTeams(context),
          builder: (BuildContext context,AsyncSnapshot snapshot){

            if(snapshot.hasData){

              List<Teams> teams = snapshot.data;
              return ListView.builder(
                itemCount:  teams.length,
                  itemBuilder: (context , index){
                return TeamWidgets(team: teams[index]);
              });

            }else{
              return const Center(child:  CircularProgressIndicator(),);
            }

          },
        )
      ),
    );
  }
}