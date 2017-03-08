part of swagger.api;


@Entity()
class UserAchievementResource {
  /* Flag indicating whether the user has earned the achievement */
  @Property(name: 'achieved')
  bool achieved = null;
  
/* The achievement being tracked.  If used for Leveling, this represents the tier name */
  @Property(name: 'achievement_name')
  String achievementName = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The date/time the achievement was earned as a unix timestamp in seconds */
  @Property(name: 'earned_date')
  int earnedDate = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  UserAchievementResource();

  @override
  String toString()  {
    return 'UserAchievementResource[achieved=$achieved, achievementName=$achievementName, createdDate=$createdDate, earnedDate=$earnedDate, updatedDate=$updatedDate, ]';
  }

}

