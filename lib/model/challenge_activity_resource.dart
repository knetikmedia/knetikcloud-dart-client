part of swagger.api;


@Entity()
class ChallengeActivityResource {
  /* The id of the activity */
  @Property(name: 'activity_id')
  int activityId = null;
  
/* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The id of the challenge */
  @Property(name: 'challenge_id')
  int challengeId = null;
  
/* Defines core settings about the activity that affect how it can be created/played by users. Values may be left null to inherit from parent activity. */
  @Property(name: 'core_settings')
  CoreChallengeActivitySettings coreSettings = null;
  
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
  
/* A challenge activity template this challenge activity is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
  ChallengeActivityResource();

  @override
  String toString()  {
    return 'ChallengeActivityResource[activityId=$activityId, additionalProperties=$additionalProperties, challengeId=$challengeId, coreSettings=$coreSettings, entitlement=$entitlement, id=$id, rewardSet=$rewardSet, settings=$settings, template=$template, ]';
  }

}

