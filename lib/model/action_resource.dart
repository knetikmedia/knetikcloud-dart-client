part of swagger.api;


@Entity()
class ActionResource {
  /* The category the action is in. All customer specific actions are in the 'custom' category */
  @Property(name: 'category')
  String category = null;
  //enum categoryEnum {  achievement,  behavior,  comment,  disposition,  device,  entitlement,  friends,  fulfillment,  gamification,  inventory,  invoice,  media,  scheduler,  store,  subscription,  user,  wallet,  custom,  challenge,  activity,  campaign,  event,  };
/* The description of the action */
  @Property(name: 'description')
  String description = null;
  
/* The name of the action. Used as the unique id for reference */
  @Property(name: 'name')
  String name = null;
  
/* A list of tags for searching */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The variables required for the action */
  @Property(name: 'variables')
  List<ActionVariableResource> variables = [];
  
  ActionResource();

  @override
  String toString()  {
    return 'ActionResource[category=$category, description=$description, name=$name, tags=$tags, variables=$variables, ]';
  }

}

