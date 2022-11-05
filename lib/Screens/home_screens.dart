import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Screens/history_screens.dart';
import 'package:t20_worldcup_app/Screens/schedule_screens.dart';
import 'package:t20_worldcup_app/Screens/team_screens.dart';
import 'package:t20_worldcup_app/Screens/venue_screens.dart';
import 'package:t20_worldcup_app/Widgets/BackgroundImage.dart';
import 'package:t20_worldcup_app/Widgets/CoustamAppBare.dart';
import 'package:t20_worldcup_app/Widgets/dashboardWidegt.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CoustomAppBar(
        Title: 'T20 World Cup', 
      ),
      body: BackgroundImage(
        padding: EdgeInsets.all(20),
        child: GridView(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: [
            DashboardWidgets(
              imagepath: 'assets/dashboard/schedule.png',
              title: 'Schedule',
              ontab: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const ScheduleScreen()));
              },
            ),
            DashboardWidgets(
              imagepath: 'assets/dashboard/venues.png',
              title: 'Venues',
              ontab: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const VenueScreen()));
              },
            ),
            DashboardWidgets(
              imagepath: 'assets/dashboard/history.png',
              title: 'History',
              ontab: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const History_Screen()));
              },
            ),
            DashboardWidgets(
              imagepath: 'assets/dashboard/teams.png',
              title: 'Teams',
              ontab: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> const TeamScreen()));
              },
            ),
            DashboardWidgets(
              imagepath: 'assets/dashboard/live_score.png',
              title: 'Live Score',
              ontab: () async{
                const url = 'https://www.t20worldcup.com/home-page';

                await canLaunchUrl(Uri.parse(url))
                    ? await launchUrl(Uri.parse(url))
                    : throw 'Could not launch $url';
              },

            ),
            DashboardWidgets(
              imagepath: 'assets/dashboard/highlights.png',
              title: 'Highlights',
              ontab: ()async{

                const url = 'https://www.youtube.com/c/ICC/featured';

                await canLaunchUrl(Uri.parse(url))
                    ? await launchUrl(Uri.parse(url))
                    : throw 'Could not launch $url';

              },
            ),

          ],
        ),
      ),
    );
  }
}
