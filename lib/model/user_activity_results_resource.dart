part of swagger.api;


@Entity()
class UserActivityResultsResource {
  /* The raw score. Null means non-compete or disqualification */
  @Property(name: 'score')
  int score = null;
  
/* Any tags for the metric. Each unique tag will translate into a unique leaderboard. Maximum 5 tags and 50 characters each */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The id of the player */
  @Property(name: 'user_id')
  int userId = null;
  
  UserActivityResultsResource();

  @override
  String toString()  {
    return 'UserActivityResultsResource[score=$score, tags=$tags, userId=$userId, ]';
  }

}

