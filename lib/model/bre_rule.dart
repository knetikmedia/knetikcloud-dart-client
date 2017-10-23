part of swagger.api;


@Entity()
class BreRule {
  /* A list of actions to execute, and the mapping for their parameters, when the rule runs. Minimum 1 */
  @Property(name: 'actions')
  List<ActionContext«object»> actions = [];
  
/* A condition expression that must be met in a given event for the rule to run. Null to always run. */
  @Property(name: 'condition')
  PredicateResource condition = null;
  
/* The condition as a readable string. Filled in by the system from the condition */
  @Property(name: 'condition_text')
  String conditionText = null;
  
/* The human readable description of the rule */
  @Property(name: 'description')
  String description = null;
  
/* Whether the rule is enabled to run (in conjunction with dates). Default true */
  @Property(name: 'enabled')
  bool enabled = null;
  
/* The date the rule ceases to take effect, or null if never. Unix timestamp in seconds */
  @Property(name: 'end_date')
  int endDate = null;
  
/* The event name of the trigger this rule runs for. Affects which parameters are available */
  @Property(name: 'event_name')
  String eventName = null;
  
/* The id of the rule for later references. If left null a random guid will be generated. Must be unique. Cannot be changed */
  @Property(name: 'id')
  String id = null;
  
/* The human readable name of the rule */
  @Property(name: 'name')
  String name = null;
  
/* Used to sort rules to control the order they run in. Larger numbered sort values run first.  Default 500 */
  @Property(name: 'sort')
  int sort = null;
  
/* The date the rule begins to take effect, or null if always. Unix timestamp in seconds */
  @Property(name: 'start_date')
  int startDate = null;
  
/* Whether the rule is a default part of the system. System rules cannot be edited or deleted, but may be disabled */
  @Property(name: 'system_rule')
  bool systemRule = null;
  
  BreRule();

  @override
  String toString()  {
    return 'BreRule[actions=$actions, condition=$condition, conditionText=$conditionText, description=$description, enabled=$enabled, endDate=$endDate, eventName=$eventName, id=$id, name=$name, sort=$sort, startDate=$startDate, systemRule=$systemRule, ]';
  }

}

