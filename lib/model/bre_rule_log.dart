part of swagger.api;


@Entity()
class BreRuleLog {
  /* Whether the rule ran */
  @Property(name: 'ran')
  bool ran = null;
  
/* The reason for the rule */
  @Property(name: 'reason')
  String reason = null;
  
/* The end date of the rule in seconds */
  @Property(name: 'rule_end_date')
  int ruleEndDate = null;
  
/* The id of the rule */
  @Property(name: 'rule_id')
  String ruleId = null;
  
/* The name of the rule */
  @Property(name: 'rule_name')
  String ruleName = null;
  
/* The start date of the rule in seconds */
  @Property(name: 'rule_start_date')
  int ruleStartDate = null;
  
  BreRuleLog();

  @override
  String toString()  {
    return 'BreRuleLog[ran=$ran, reason=$reason, ruleEndDate=$ruleEndDate, ruleId=$ruleId, ruleName=$ruleName, ruleStartDate=$ruleStartDate, ]';
  }

}

