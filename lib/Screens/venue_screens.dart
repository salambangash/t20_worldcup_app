import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/Data_Api.dart';
import 'package:t20_worldcup_app/Widgets/BackgroundImage.dart';
import 'package:t20_worldcup_app/Widgets/CoustamAppBare.dart';
import 'package:t20_worldcup_app/Widgets/venue_widget.dart';
import 'package:t20_worldcup_app/models/Venues.dart';

class VenueScreen extends StatelessWidget {
  const VenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(Title: 'Venue',),
      body: BackgroundImage(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<List<Venue>>(
          future: MydataApi.getAllVenue(context),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            if(snapshot.hasData){
              List<Venue> venues = snapshot.data;

              return ListView.builder(
                itemCount: venues.length,
                  itemBuilder: (context, index){

                  return Venue_Widgets(venue: venues[index]);
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