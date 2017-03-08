part of swagger.api;


@Entity()
class FlagResource {
  /* The context of that resource */
  @Property(name: 'context')
  String context = null;
  
/* The context_id of that resource */
  @Property(name: 'context_id')
  String contextId = null;
  
/* The date/time this resource was created in seconds since epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The flag reason of that resource */
  @Property(name: 'reason')
  String reason = null;
  
/* The date/time this resource was last updated in seconds since epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The basic user resource */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  FlagResource();

  @override
  String toString()  {
    return 'FlagResource[context=$context, contextId=$contextId, createdDate=$createdDate, id=$id, reason=$reason, updatedDate=$updatedDate, user=$user, ]';
  }

}

