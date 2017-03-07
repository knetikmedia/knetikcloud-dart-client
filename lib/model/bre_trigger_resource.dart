part of swagger.api;


@Entity()
class BreTriggerResource {
  /* The category this trigger belongs to. See endpoints for related asset information. All new triggers are in category 'custom' */
  @Property(name: 'category')
  String category = null;
  //enum categoryEnum {  achievement,  behavior,  comment,  disposition,  device,  entitlement,  friends,  fulfillment,  gamification,  inventory,  invoice,  media,  scheduler,  store,  subscription,  user,  wallet,  custom,  challenge,  activity,  campaign,  event,  };
/* The unique name for the event. This serves as the unique identifier. Cannot be changed after creation */
  @Property(name: 'event_name')
  String eventName = null;
  
/* A list af parameters that will be sent with the event when the trigger is fired. These must be included in the event and match the described types */
  @Property(name: 'parameters')
  List<BreTriggerParameterDefinition> parameters = [];
  
/* Where this trigger came from. System triggers cannot be removed or updated */
  @Property(name: 'system_trigger')
  bool systemTrigger = null;
  
/* A description of the trigger */
  @Property(name: 'trigger_description')
  String triggerDescription = null;
  
/* A human readable name for this trigger */
  @Property(name: 'trigger_name')
  String triggerName = null;
  
  BreTriggerResource();

  @override
  String toString()  {
    return 'BreTriggerResource[category=$category, eventName=$eventName, parameters=$parameters, systemTrigger=$systemTrigger, triggerDescription=$triggerDescription, triggerName=$triggerName, ]';
  }

}

