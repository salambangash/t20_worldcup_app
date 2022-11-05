import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:t20_worldcup_app/models/Teams_model.dart';
import 'package:t20_worldcup_app/models/Venues.dart';
import 'package:t20_worldcup_app/models/history.dart';
import '../models/Match.dart';

class MydataApi
{

  static Future<List<T20Match>> getAllMatches( BuildContext context) async {
    var matches = <T20Match>[];

    var assetsBundle = DefaultAssetBundle.of(context);
    var data = await assetsBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);

    var jsonSchedule = jsonData['schedule'];

    for (var jsonmatch in jsonSchedule) {
      T20Match match = T20Match.fromJSON(jsonmatch);
      matches.add(match);
    }

    return matches;
  }

       //    This Class For Venues
  static Future<List<Venue>> getAllVenue(BuildContext context) async{

    var venues = <Venue>[];
    var assetsBundle = DefaultAssetBundle.of(context);
    var data = await assetsBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);

    var  jsonVenues = jsonData['venues'];

    for(var jsonVenue in jsonVenues){
      Venue venue = Venue.FromJSON(jsonVenue);
      venues.add(venue);
    }
    return venues;
  }

  static Future<List<History>> getAllHistory(BuildContext context)async{

    var historyList = <History>[];
    var assetsBundle = DefaultAssetBundle.of(context);
    var data = await assetsBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);

    var jsonHistory = jsonData['history'];

    for(var mapHistory in jsonHistory){

      History history = History.fromJSON(mapHistory);
      historyList.add(history);
    }
    return historyList;
  }

  static Future<List<Teams>> getAllTeams(BuildContext context)async{

    var teams = <Teams>[];
    var assetsBundle = DefaultAssetBundle.of(context);
    var data = await assetsBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);

    var jsonTeams = jsonData['teams'];

    for(var jsonTeam in jsonTeams){

      Teams team = Teams.fromJSON(jsonTeam);

      teams.add(team);
    }
    return teams;

  }

}