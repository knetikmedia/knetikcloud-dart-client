part of swagger.api;


@Entity()
class BreEventLog {
  /* The customer of the BRE event log */
  @Property(name: 'customer')
  String customer = null;
  
/* The event id of the BRE event log */
  @Property(name: 'event_id')
  int eventId = null;
  
/* The event name of the BRE event log */
  @Property(name: 'event_name')
  String eventName = null;
  
/* The event start date of the BRE event log */
  @Property(name: 'event_start_date')
  int eventStartDate = null;
  
/* The id of the BRE event log */
  @Property(name: 'id')
  String id = null;
  
/* The event paramters of the BRE event log */
  @Property(name: 'parameters')
  Object parameters = null;
  
/* The rules of the BRE event log */
  @Property(name: 'rules')
  List<BreRuleLog> rules = [];
  
  BreEventLog();

  @override
  String toString()  {
    return 'BreEventLog[customer=$customer, eventId=$eventId, eventName=$eventName, eventStartDate=$eventStartDate, id=$id, parameters=$parameters, rules=$rules, ]';
  }

}

