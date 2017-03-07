part of swagger.api;


@Entity()
class ActivityResource {
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
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The rewards to give at the end of each occurence of the activity. When creating/updating only id is used. Reward set must be pre-existing */
  @Property(name: 'reward_set')
  RewardSetResource rewardSet = null;
  
/* The list of settings and their options available for this activity. Not populated when getting listing */
  @Property(name: 'settings')
  List<AvailableSettingResource> settings = [];
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* Whether this activity is a template for other activities. Default: false */
  @Property(name: 'template')
  bool template = null;
  
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
    return 'ActivityResource[createdDate=$createdDate, entitlements=$entitlements, id=$id, launch=$launch, longDescription=$longDescription, name=$name, rewardSet=$rewardSet, settings=$settings, shortDescription=$shortDescription, template=$template, type=$type, uniqueKey=$uniqueKey, updatedDate=$updatedDate, ]';
  }

}

