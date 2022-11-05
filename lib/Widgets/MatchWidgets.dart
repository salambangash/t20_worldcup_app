import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/app_colors.dart';
import 'package:t20_worldcup_app/Utility/helper.dart';
import 'package:t20_worldcup_app/models/Match.dart';


class MatchWidgets extends StatelessWidget {

  final  T20Match match;
  const MatchWidgets({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 15),

      child: Stack(
        alignment: Alignment.center,
        children: [

          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top:5.0,left: 5.0),
                  decoration: const BoxDecoration(
                    color: AppColors.lightPurpleColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                         Roundflag(flag: match.flagOne),
                          const SizedBox(width: 5,),
                          Text(match.teamOne, style: const TextStyle(color: Colors.white),)
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                          height: 20,
                          child: Center(child: Text('VS',style: TextStyle(color: Colors.white),))),
                      Row(
                        children: [
                          Roundflag(flag: match.flagTwo),
                          const SizedBox(width: 5,),
                          Text(match.teamTwo, style: const TextStyle(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  decoration: const BoxDecoration(
                    color: AppColors.pinkColor,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [

                      Text(Helper.getDate(match.date), style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
                      Text(Helper.getGMTTime(match.date), style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                      Text(Helper.getLocalTime(match.date), style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                      Text(match.venue, style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                    ],
                  ),
                ),
              )
            ],
          ),
          const Image(image:  AssetImage('assets/images/player_icon.png'),
            height: 50,
            width: 50,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Roundflag extends StatelessWidget {

  final String flag;
  const Roundflag({Key? key, required this.flag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white,width: 2)
      ),

      child: ClipOval(
          child: Image.asset('assets/flags/$flag',fit: BoxFit.cover,)),
    );
  }
}

