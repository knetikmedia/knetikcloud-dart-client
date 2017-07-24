part of swagger.api;


@Entity()
class BreTriggerParameterDefinition {
  /* The name of the parameter. This is used as the unique identifier of this parameter */
  @Property(name: 'name')
  String name = null;
  
/* Whether this parameter can be left off when firing the event. Default false */
  @Property(name: 'optional')
  bool optional = null;
  
/* The variable type of this parameter. See Bre Variables endpoint for list */
  @Property(name: 'type')
  String type = null;
  
  BreTriggerParameterDefinition();

  @override
  String toString()  {
    return 'BreTriggerParameterDefinition[name=$name, optional=$optional, type=$type, ]';
  }

}

