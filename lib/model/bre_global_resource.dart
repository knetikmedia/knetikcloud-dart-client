part of swagger.api;


@Entity()
class BreGlobalResource {
  /* A human readable description for display in admin pages */
  @Property(name: 'description')
  String description = null;
  
/* The id of the global definition. Default is a random guid. Cannot be updated */
  @Property(name: 'id')
  String id = null;
  
/* The key for the global. Must be unique when combined with scope names. Usually a single descriptive word like 'purchases' or 'logins' */
  @Property(name: 'key')
  String key = null;
  
/* A human readable name for display in admin pages */
  @Property(name: 'name')
  String name = null;
  
/* A list of scoping parameters. Allows the global to have a different value in different context such as a count of purchases for each user (by putting a 'user' scope in this list). When using this global in a rule these scopes will need to be mapped with an expression to provide a value, similar to the parameters in an action */
  @Property(name: 'scopes')
  List<BreGlobalScopeDefinition> scopes = [];
  
/* Where this global came from. System globals cannot be removed or updated */
  @Property(name: 'system_global')
  bool systemGlobal = null;
  
/* The variable type the global stores. See the See Bre Variables enpoint for list */
  @Property(name: 'type')
  String type = null;
  
  BreGlobalResource();

  @override
  String toString()  {
    return 'BreGlobalResource[description=$description, id=$id, key=$key, name=$name, scopes=$scopes, systemGlobal=$systemGlobal, type=$type, ]';
  }

}

