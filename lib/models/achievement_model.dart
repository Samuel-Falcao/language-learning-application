class AchievementModel {
  final String id;
  final String title;
  final String description;
  final String icon; // pode ser um emoji ou asset

  const AchievementModel({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });
}
