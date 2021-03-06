part of swagger.api;


@Entity()
class ActivityResource {
  /* A map of additional properties keyed on the property name. Used to further describe an activity. While settings will vary from one activity occurrence (a game) to another, additional properties are shared by all the occurrences of this activity. Ex: Activity Logo, Disclaimer, Greeting, etc. Validated against template if one exists for activities */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* Defines core settings about the activity that affect how it can be created/played by users. */
  @Property(name: 'core_settings')
  CoreActivitySettings coreSettings = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The list of items that can be used for entitlement (wager amounts/etc) */
  @Property(name: 'entitlements')
  List<ActivityEntitlementResource> entitlements = [];
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* Details about how to launch the activity */
  @Property(name: 'launch')
  String launch = null;
  
/* The strategy for calculating the leaderboard. No strategy means no leaderboard for the top level context. Value MUST come from the list of available strategies from the Leaderboard Service */
  @Property(name: 'leaderboard_strategy')
  String leaderboardStrategy = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing */
  @Property(name: 'reward_set')
  RewardSetResource rewardSet = null;
  
/* Define what parameters are required/available to start and run an activity. For example: Difficulty, Number of Questions, Character name, Avatar, Duration, etc. Not populated when getting listing */
  @Property(name: 'settings')
  List<AvailableSettingResource> settings = [];
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* Whether this activity is a template for other activities. Default: false */
  @Property(name: 'template')
  bool template = null;
  
/* An activity template this activity is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template_id')
  String templateId = null;
  
/* The type of the activity */
  @Property(name: 'type')
  String type = null;
  
/* The unique key (for static reference in code) of the activity */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ActivityResource();

  @override
  String toString()  {
    return 'ActivityResource[additionalProperties=$additionalProperties, coreSettings=$coreSettings, createdDate=$createdDate, entitlements=$entitlements, id=$id, launch=$launch, leaderboardStrategy=$leaderboardStrategy, longDescription=$longDescription, name=$name, rewardSet=$rewardSet, settings=$settings, shortDescription=$shortDescription, template=$template, templateId=$templateId, type=$type, uniqueKey=$uniqueKey, updatedDate=$updatedDate, ]';
  }

}

