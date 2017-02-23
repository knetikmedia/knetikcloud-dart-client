part of swagger.api;


@Entity()
class ChallengeEventResource {
  /* The id of the challenge */
  @Property(name: 'challenge_id')
  int challengeId = null;
  
/* The end date in seconds */
  @Property(name: 'end_date')
  int endDate = null;
  
/* The id of the challenge event */
  @Property(name: 'id')
  int id = null;
  
/* Indicate if the rewards have been given out already  */
  @Property(name: 'reward_status')
  String rewardStatus = null;
  //enum rewardStatusEnum {  pending,  failed,  complete,  partial,  };
/* The start date in seconds */
  @Property(name: 'start_date')
  int startDate = null;
  
  ChallengeEventResource();

  @override
  String toString()  {
    return 'ChallengeEventResource[challengeId=$challengeId, endDate=$endDate, id=$id, rewardStatus=$rewardStatus, startDate=$startDate, ]';
  }

}

