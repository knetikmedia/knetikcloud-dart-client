part of swagger.api;


@Entity()
class BareChallengeActivityResource {
  /* The id of the activity */
  @Property(name: 'activity_id')
  int activityId = null;
  
/* The id of the challenge */
  @Property(name: 'challenge_id')
  int challengeId = null;
  
/* The unique ID for this resource */
  @Property(name: 'id')
  int id = null;
  
  BareChallengeActivityResource();

  @override
  String toString()  {
    return 'BareChallengeActivityResource[activityId=$activityId, challengeId=$challengeId, id=$id, ]';
  }

}

