part of swagger.api;


@Entity()
class BreGlobalScopeDefinition {
  /* The name of the scoping parameter. This is used as the unique identifier of this scope */
  @Property(name: 'name')
  String name = null;
  
/* The variable type of this scoping parameter. See Bre Variables endpoint for list */
  @Property(name: 'type')
  String type = null;
  
  BreGlobalScopeDefinition();

  @override
  String toString()  {
    return 'BreGlobalScopeDefinition[name=$name, type=$type, ]';
  }

}

