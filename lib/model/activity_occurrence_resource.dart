part of swagger.api;


@Entity()
class ActivityOccurrenceResource {
  /* The id of the activity */
  @Property(name: 'activity_id')
  int activityId = null;
  
/* The id of the challenge activity (as part of the event, required if eventId set) */
  @Property(name: 'challenge_activity_id')
  int challengeActivityId = null;
  
/* The date this occurrence was created, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity */
  @Property(name: 'entitlement')
  ActivityEntitlementResource entitlement = null;
  
/* The id of the event */
  @Property(name: 'event_id')
  int eventId = null;
  
/* The id of the activity occurrence */
  @Property(name: 'id')
  int id = null;
  
/* Indicate if the rewards have been given out already */
  @Property(name: 'reward_status')
  String rewardStatus = null;
  //enum rewardStatusEnum {  pending,  failed,  complete,  partial,  };
/* The list of settings and their options available for this activity. Should be null on create if and only if part of an event. Otherwise, the set must exactly match those of the activity. */
  @Property(name: 'settings')
  List<SelectedSettingResource> settings = [];
  
/* Whether this occurrence will be played as a simulation. */
  @Property(name: 'simulated')
  bool simulated = null;
  
/* The date this occurrence was started, unix timestamp in seconds. null if not yet started */
  @Property(name: 'start_date')
  int startDate = null;
  
/* The current status of the occurrence (default: OPEN) */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  SETUP,  OPEN,  PLAYING,  FINISHED,  ABANDONED,  };
/* The date this occurrence was last updated, unix timestamp in seconds */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The list of users playing in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission */
  @Property(name: 'users')
  List<ActivityUserResource> users = [];
  
  ActivityOccurrenceResource();

  @override
  String toString()  {
    return 'ActivityOccurrenceResource[activityId=$activityId, challengeActivityId=$challengeActivityId, createdDate=$createdDate, entitlement=$entitlement, eventId=$eventId, id=$id, rewardStatus=$rewardStatus, settings=$settings, simulated=$simulated, startDate=$startDate, status=$status, updatedDate=$updatedDate, users=$users, ]';
  }

}

