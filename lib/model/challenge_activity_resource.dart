part of swagger.api;


@Entity()
class ChallengeActivityResource {
  /* The id of the activity */
  @Property(name: 'activity_id')
  int activityId = null;
  
/* The id of the challenge */
  @Property(name: 'challenge_id')
  int challengeId = null;
  
/* The entitlement item needed to participate in the activity as part of this event. Null indicates free entry. When creating/updating only id is used. Item must be pre-existing */
  @Property(name: 'entitlement')
  ActivityEntitlementResource entitlement = null;
  
/* The unique ID for this resource */
  @Property(name: 'id')
  int id = null;
  
/* The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing */
  @Property(name: 'reward_set')
  RewardSetResource rewardSet = null;
  
/* The list of settings and the select options */
  @Property(name: 'settings')
  List<SelectedSettingResource> settings = [];
  
  ChallengeActivityResource();

  @override
  String toString()  {
    return 'ChallengeActivityResource[activityId=$activityId, challengeId=$challengeId, entitlement=$entitlement, id=$id, rewardSet=$rewardSet, settings=$settings, ]';
  }

}

