part of swagger.api;


@Entity()
class CreateActivityOccurrenceRequest {
  /* The id of the activity, only needed when outside of challenge/event */
  @Property(name: 'activity_id')
  int activityId = null;
  
/* The id of the challenge activity (required if playing in a challenge/event). Note that this is the challenge_activity_id in case the same activity apears twice in the challenge. */
  @Property(name: 'challenge_activity_id')
  int challengeActivityId = null;
  
/* The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity */
  @Property(name: 'entitlement')
  ItemIdRequest entitlement = null;
  
/* The id of the event this occurence is a part of, if any */
  @Property(name: 'event_id')
  int eventId = null;
  
/* The values selected from the available settings defined for the activity. Ex: difficulty: hard. Can be left out if the activity is played during an event and the settings are already set at the event level. Ex: every monday, difficulty: hard, number of questions: 10, category: sport. Otherwise, the set must exactly match those of the activity. */
  @Property(name: 'settings')
  List<SelectedSettingRequest> settings = [];
  
/* Whether this occurrence will be ran as a simulation. Simulations will not be rewarded. Useful for bot play or trials */
  @Property(name: 'simulated')
  bool simulated = null;
  
/* The current status of the occurrence (default: SETUP). */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  SETUP,  OPEN,  PLAYING,  FINISHED,  ABANDONED,  };
/* The list of users participating in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission */
  @Property(name: 'users')
  List<Participant> users = [];
  
  CreateActivityOccurrenceRequest();

  @override
  String toString()  {
    return 'CreateActivityOccurrenceRequest[activityId=$activityId, challengeActivityId=$challengeActivityId, entitlement=$entitlement, eventId=$eventId, settings=$settings, simulated=$simulated, status=$status, users=$users, ]';
  }

}

