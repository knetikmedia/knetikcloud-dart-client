part of swagger.api;


@Entity()
class FlagReportResource {
  /* The context of that resource  */
  @Property(name: 'context')
  String context = null;
  
/* The context ID of that resource */
  @Property(name: 'context_id')
  String contextId = null;
  
/* The date/time this resource was created in seconds since epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The reason of that resource required only in case of active resolution */
  @Property(name: 'reason')
  String reason = null;
  
/* The resolution of that resource */
  @Property(name: 'resolution')
  String resolution = null;
  //enum resolutionEnum {  banned,  ignored,  };
/* The date/time this report was resolved in seconds since epoch. Null if not resolved yet */
  @Property(name: 'resolved')
  int resolved = null;
  
/* The date/time this resource was last updated in seconds since epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  FlagReportResource();

  @override
  String toString()  {
    return 'FlagReportResource[context=$context, contextId=$contextId, createdDate=$createdDate, id=$id, reason=$reason, resolution=$resolution, resolved=$resolved, updatedDate=$updatedDate, ]';
  }

}

