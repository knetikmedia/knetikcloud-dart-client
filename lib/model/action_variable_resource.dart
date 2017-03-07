part of swagger.api;


@Entity()
class ActionVariableResource {
  /* The name of the variable */
  @Property(name: 'name')
  String name = null;
  
/* Whether this variable is optional and can be left out/null */
  @Property(name: 'optional')
  bool optional = null;
  
/* The type of the variable (see variable type endpoint for list) */
  @Property(name: 'type')
  String type = null;
  
  ActionVariableResource();

  @override
  String toString()  {
    return 'ActionVariableResource[name=$name, optional=$optional, type=$type, ]';
  }

}

