part of swagger.api;


@Entity()
class UserAchievementGroupResource {
  /* The list of achievements associated with the group */
  @Property(name: 'achievements')
  List<UserAchievementResource> achievements = [];
  
/* The name of the group.  If used by Leveling, this will represent the level name */
  @Property(name: 'group_name')
  String groupName = null;
  
/* The id of the achievement progress */
  @Property(name: 'id')
  String id = null;
  
/* The current progress of the user on the group */
  @Property(name: 'progress')
  int progress = null;
  
/* The id of the user whose progress is being tracked */
  @Property(name: 'user_id')
  int userId = null;
  
  UserAchievementGroupResource();

  @override
  String toString()  {
    return 'UserAchievementGroupResource[achievements=$achievements, groupName=$groupName, id=$id, progress=$progress, userId=$userId, ]';
  }

}

