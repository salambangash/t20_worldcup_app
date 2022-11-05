
import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/app_colors.dart';
import 'package:t20_worldcup_app/models/history.dart';

class History_widgets extends StatelessWidget {
  final History history;
    const History_widgets({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Row(
    children: [
      countrywidget(country: history.winner, countryFlag: history.winnerFlag),
      const CircleAvatar(
        radius: 25,
        backgroundColor: AppColors.primaryColor,
        child: Text('VS', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      countrywidget(country: history.runnerUp, countryFlag: history.runnerUpFlag),
  ],
    ), 
      const SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text('Winner', style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
          Text('RunnerUp', style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          Text(history.winnerScore, style: const TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
          Text(history.runnerUpScore, style:const TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
        ],
      ),
      const SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Image.asset(history.winnerCaptain, height: 150,width: 100,fit: BoxFit.cover,),
         Column(
           children: [
             Text(history.year, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryColor),),
             Image.asset('assets/images/trophy.png',height: 100,width: 70,fit: BoxFit.cover,),
             const Text('Hosted by',style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryColor),),
             Text(history.host,style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.primaryColor),)
           ],
         ),
         Image.asset(history.runnerUpCaptain, height: 150,width: 100,fit: BoxFit.cover,),
        ],
      ),
      const SizedBox(height: 30,),

    ],
    );
  }
}

class countrywidget extends StatelessWidget {
  final String country;
  final String countryFlag;
  const countrywidget({Key? key, required this.country, required this.countryFlag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              AppColors.pinkColor,
              AppColors.lightPurpleColor
            ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/flags/$countryFlag'),
            ),
            const SizedBox(width: 5,),
            Text(country, style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}

