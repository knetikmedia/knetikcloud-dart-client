part of swagger.api;


@Entity()
class UserAchievementResource {
  /* Flag indicating whether the user has earned the achievement */
  @Property(name: 'achieved')
  bool achieved = null;
  
/* The achievement being tracked */
  @Property(name: 'achievement_name')
  String achievementName = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The date/time the achievement was earned as a unix timestamp in seconds */
  @Property(name: 'earned_date')
  int earnedDate = null;
  
/* The id of the achievement progress */
  @Property(name: 'id')
  String id = null;
  
/* The current progress of the user on the achievement */
  @Property(name: 'progress')
  int progress = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The id of the user whose progress is being tracked */
  @Property(name: 'user_id')
  int userId = null;
  
  UserAchievementResource();

  @override
  String toString()  {
    return 'UserAchievementResource[achieved=$achieved, achievementName=$achievementName, createdDate=$createdDate, earnedDate=$earnedDate, id=$id, progress=$progress, updatedDate=$updatedDate, userId=$userId, ]';
  }

}

