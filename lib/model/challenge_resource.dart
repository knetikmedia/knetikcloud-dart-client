part of swagger.api;


@Entity()
class ChallengeResource {
  /* The number of activities allowed to this challenge */
  @Property(name: 'activities')
  int activities = null;
  
/* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The id of the campaign this challenge is a part of. The challenge must be tied to an active campaign before it will spawn events */
  @Property(name: 'campaign_id')
  int campaignId = null;
  
/* The ID of the original challenge it was copied from */
  @Property(name: 'copy_of')
  int copyOf = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The end date of this challenge in seconds since epoch. required if part of a campaign */
  @Property(name: 'end_date')
  int endDate = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service. */
  @Property(name: 'leaderboard_strategy')
  String leaderboardStrategy = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The next date this challenge will be occur in seconds since epoch */
  @Property(name: 'next_event_date')
  int nextEventDate = null;
  
/* The number of minutes minimum to wait at the end of this challenge before running rewards, to allow activities to complete */
  @Property(name: 'reward_lag_minutes')
  int rewardLagMinutes = null;
  
/* The rewards to give at the end of the challenge. When creating/updating only id is used. Reward set must be pre-existing */
  @Property(name: 'reward_set')
  RewardSetResource rewardSet = null;
  
/* The repeat schedule for the challenge */
  @Property(name: 'schedule')
  Schedule schedule = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* The start date of this challenge in seconds since epoch. required if part of a campaign */
  @Property(name: 'start_date')
  int startDate = null;
  
/* A challenge template this challenge is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ChallengeResource();

  @override
  String toString()  {
    return 'ChallengeResource[activities=$activities, additionalProperties=$additionalProperties, campaignId=$campaignId, copyOf=$copyOf, createdDate=$createdDate, endDate=$endDate, id=$id, leaderboardStrategy=$leaderboardStrategy, longDescription=$longDescription, name=$name, nextEventDate=$nextEventDate, rewardLagMinutes=$rewardLagMinutes, rewardSet=$rewardSet, schedule=$schedule, shortDescription=$shortDescription, startDate=$startDate, template=$template, updatedDate=$updatedDate, ]';
  }

}

