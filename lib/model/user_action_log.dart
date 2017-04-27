part of swagger.api;


@Entity()
class UserActionLog {
  /* A description of the action taken */
  @Property(name: 'action_description')
  String actionDescription = null;
  
/* The name of the action taken */
  @Property(name: 'action_name')
  String actionName = null;
  
/* The date of the action, unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* A map of additional details such as the target of the action */
  @Property(name: 'details')
  Map<String, String> details = {};
  
/* The id of the log entry */
  @Property(name: 'id')
  String id = null;
  
/* The id of the api request that spawned the action, if generated internally */
  @Property(name: 'request_id')
  String requestId = null;
  
/* The id of the user that took the action, if any. Read-only if not posting with LOGS_ADMIN */
  @Property(name: 'user_id')
  int userId = null;
  
  UserActionLog();

  @override
  String toString()  {
    return 'UserActionLog[actionDescription=$actionDescription, actionName=$actionName, createdDate=$createdDate, details=$details, id=$id, requestId=$requestId, userId=$userId, ]';
  }

}

