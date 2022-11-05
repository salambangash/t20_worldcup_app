import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/Data_Api.dart';
import 'package:t20_worldcup_app/Widgets/BackgroundImage.dart';
import 'package:t20_worldcup_app/Widgets/CoustamAppBare.dart';
import 'package:t20_worldcup_app/Widgets/History_widgets.dart';
import 'package:t20_worldcup_app/models/history.dart';

class History_Screen extends StatelessWidget {
  const History_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(Title: 'History'),
      body: BackgroundImage(
        padding: EdgeInsets.all(10),
        child:FutureBuilder<List<History>>(
          future: MydataApi.getAllHistory(context),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            if(snapshot.hasData){
              List<History> historylist = snapshot.data;

              return ListView.builder(
                  itemCount: historylist.length,
                  itemBuilder: (context, index){

                    return History_widgets(history: historylist[index],);
                  });

            }else{
              return const Center(child: CircularProgressIndicator(),);
            }
          },

        )
      ),
    );
  }
}