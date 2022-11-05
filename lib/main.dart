import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/Screens/highlights_Screen.dart';
import 'package:t20_worldcup_app/Screens/home_screens.dart';
import 'package:t20_worldcup_app/Screens/schedule_screens.dart';
import 'package:t20_worldcup_app/Utility/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'T20 World Cup', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryColor,
        )
      ),
      home: const  HomeScreen(),
    );
  }
}