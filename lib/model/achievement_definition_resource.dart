part of swagger.api;


@Entity()
class AchievementDefinitionResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this resource type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The description of the achievement. Must be at least 2 characters in length. */
  @Property(name: 'description')
  String description = null;
  
/* Whether the achievement is hidden from the user */
  @Property(name: 'hidden')
  bool hidden = null;
  
/* The name of the achievement. Must be at least 6 characters in length. IMMUTABLE */
  @Property(name: 'name')
  String name = null;
  
/* The required progress for the achievement definition */
  @Property(name: 'required_progress')
  int requiredProgress = null;
  
/* The id of the rule generated for this achievement */
  @Property(name: 'rule_id')
  String ruleId = null;
  
/* The tags for the achievement definition */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* An achievement template this achievement is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The name of the trigger event associated with this achievement */
  @Property(name: 'trigger_event_name')
  String triggerEventName = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  AchievementDefinitionResource();

  @override
  String toString()  {
    return 'AchievementDefinitionResource[additionalProperties=$additionalProperties, createdDate=$createdDate, description=$description, hidden=$hidden, name=$name, requiredProgress=$requiredProgress, ruleId=$ruleId, tags=$tags, template=$template, triggerEventName=$triggerEventName, updatedDate=$updatedDate, ]';
  }

}

