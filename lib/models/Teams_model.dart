class Teams {

  late String fullName;
  late String shortName;
  late String captain;
  late String flag;
  late String captainImage;

  Teams({
    required this.fullName,
    required this.shortName,
    required this.captain,
    required this.flag,
    required this.captainImage
  });

  factory Teams.fromJSON(Map<String, dynamic>map){
    return Teams(
        fullName: map['fullName'],
        shortName: map['shortName'],
        captain: map['captain'],
        flag: map['flag'],
        captainImage: map['captainImage']
    );
  }

}