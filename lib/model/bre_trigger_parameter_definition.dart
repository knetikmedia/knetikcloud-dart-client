part of swagger.api;


@Entity()
class BreTriggerParameterDefinition {
  /* The name of the parameter. This is used as the unique identifier of this parameter */
  @Property(name: 'name')
  String name = null;
  
/* The variable type of this parameter. See Bre Variables endpoint for list */
  @Property(name: 'type')
  String type = null;
  
  BreTriggerParameterDefinition();

  @override
  String toString()  {
    return 'BreTriggerParameterDefinition[name=$name, type=$type, ]';
  }

}

