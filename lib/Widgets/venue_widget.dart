import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Utility/app_colors.dart';
import 'package:t20_worldcup_app/models/Venues.dart';

class Venue_Widgets extends StatelessWidget {
  final Venue venue;
  const Venue_Widgets({Key? key,required this.venue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 350,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: AppColors.pinkColor,
        borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(venue.image,fit: BoxFit.cover,))),
                Positioned(
                  left: (MediaQuery.of(context).size.width) / 2 - 95,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)
                       ),
                       boxShadow: [
                         BoxShadow(
                             color: Colors.grey,
                             blurRadius: 5
                            )
                             ],
                      ),
                      child:  Text(venue.country,style:const TextStyle(color: Colors.white),
                    )
                ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Text(venue.stadium, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),),
          const SizedBox(height: 5,),
          Text(venue.city, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),)
        ],
      ),
    );
  }
}
