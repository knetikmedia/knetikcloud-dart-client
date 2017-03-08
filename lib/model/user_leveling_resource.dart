part of swagger.api;


@Entity()
class UserLevelingResource {
  /* The name of the last tier the user has qualified for */
  @Property(name: 'last_tier_name')
  String lastTierName = null;
  
/* The progress level of the last tier the user has qualified for */
  @Property(name: 'last_tier_progress')
  int lastTierProgress = null;
  
/* The name of the level schema */
  @Property(name: 'level_name')
  String levelName = null;
  
/* The name of the next tier the user can qualify for */
  @Property(name: 'next_tier_name')
  String nextTierName = null;
  
/* The progress needed to qualify for the next tier */
  @Property(name: 'next_tier_progress')
  int nextTierProgress = null;
  
/* The amount of progress the user has */
  @Property(name: 'progress')
  int progress = null;
  
/* The names of the tiers the user has qualified for */
  @Property(name: 'tier_names')
  List<String> tierNames = [];
  
/* The ID of the user */
  @Property(name: 'user_id')
  int userId = null;
  
  UserLevelingResource();

  @override
  String toString()  {
    return 'UserLevelingResource[lastTierName=$lastTierName, lastTierProgress=$lastTierProgress, levelName=$levelName, nextTierName=$nextTierName, nextTierProgress=$nextTierProgress, progress=$progress, tierNames=$tierNames, userId=$userId, ]';
  }

}

