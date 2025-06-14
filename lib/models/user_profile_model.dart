class UserProfileModel {
  final int totalXp;
  final int level;
  final String levelName;
  final int currentLevelXp;
  final int currentLevelBaseXp;
  final int nextLevelBaseXp;
  final int streak;
  final String avatarId;
  final int gems;
  final int periodXP;
  final int lastPeriodXP;
  final bool periodChallengeCompleted;

  UserProfileModel({
    this.totalXp = 0,
    this.level = 1,
    this.levelName = "Novato",
    this.currentLevelXp = 0,
    this.currentLevelBaseXp = 0,
    this.nextLevelBaseXp = 100,
    this.streak = 0,
    this.avatarId = 'default_avatar',
    this.gems = 0,
    this.periodXP = 0,
    this.lastPeriodXP = 0,
    this.periodChallengeCompleted = false,
  });
}
