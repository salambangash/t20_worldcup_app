import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/app_colors.dart';
import 'package:t20_worldcup_app/models/Teams_model.dart';

class TeamWidgets extends StatelessWidget {
  final Teams team;
  const TeamWidgets({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                 borderRadius: BorderRadius.circular(10),
                  child: Image.asset(team.flag,width: 100,height: 80,fit: BoxFit.cover,)),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(team.fullName, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                  const SizedBox(height: 5,),
                  Text(team.captain,  style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white))
                ],
              ),

            ],
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(team.captainImage),
          )
        ],
      ),
    );
  }
}
