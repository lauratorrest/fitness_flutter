class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected
  });

  static List < PopularDietsModel > getPopularDiets() {
    List < PopularDietsModel > popularDiets = [
      PopularDietsModel(
       name: 'Blueberry Pancake',
       iconPath: 'blueberry-pancake.svg',
       level: 'Medium',
       duration: '30mins',
       calorie: '230kCal',
       boxIsSelected: true,
      ),
      PopularDietsModel(
       name: 'Salmon Nigiri',
       iconPath: 'salmon-nigiri.svg',
       level: 'Easy',
       duration: '20mins',
       calorie: '120kCal',
       boxIsSelected: false,
      )
    ];

    return popularDiets;
  }
}
