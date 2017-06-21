part of swagger.api;


@Entity()
class CampaignResource {
  /* Whether the campaign is active or not.  Defaults to false */
  @Property(name: 'active')
  bool active = null;
  
/* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service */
  @Property(name: 'leaderboard_strategy')
  String leaderboardStrategy = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The name of the next challenge coming up */
  @Property(name: 'next_challenge')
  String nextChallenge = null;
  
/* The date/time of the next challenge coming up */
  @Property(name: 'next_challenge_date')
  int nextChallengeDate = null;
  
/* The rewards to give at the end of the campaign. When creating/updating only id is used. Reward set must be pre-existing */
  @Property(name: 'reward_set')
  RewardSetResource rewardSet = null;
  
/* Indicate if the rewards have been given out already */
  @Property(name: 'reward_status')
  String rewardStatus = null;
  //enum rewardStatusEnum {  pending,  failed,  complete,  partial,  };
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* A campaign template this campaign is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  CampaignResource();

  @override
  String toString()  {
    return 'CampaignResource[active=$active, additionalProperties=$additionalProperties, createdDate=$createdDate, id=$id, leaderboardStrategy=$leaderboardStrategy, longDescription=$longDescription, name=$name, nextChallenge=$nextChallenge, nextChallengeDate=$nextChallengeDate, rewardSet=$rewardSet, rewardStatus=$rewardStatus, shortDescription=$shortDescription, template=$template, updatedDate=$updatedDate, ]';
  }

}

