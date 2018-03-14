part of swagger.api;


@Entity()
class ForwardLog {
  /* The end date of the forward log entry */
  @Property(name: 'end_date')
  int endDate = null;
  

  @Property(name: 'error_msg')
  String errorMsg = null;
  

  @Property(name: 'event_id')
  String eventId = null;
  

  @Property(name: 'headers')
  String headers = null;
  
/* The http status code the forward log entry */
  @Property(name: 'http_status_code')
  int httpStatusCode = null;
  
/* The id of the forward log entry */
  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'method')
  String method = null;
  
/* The payload of the forward log entry */
  @Property(name: 'payload')
  Object payload = null;
  
/* The response string of the forward log entry */
  @Property(name: 'response')
  String response = null;
  
/* The retry count of the forward log entry */
  @Property(name: 'retry_count')
  int retryCount = null;
  

  @Property(name: 'retryable')
  bool retryable = null;
  

  @Property(name: 'rule_id')
  String ruleId = null;
  
/* The start date of the forward log entry */
  @Property(name: 'start_date')
  int startDate = null;
  

  @Property(name: 'success')
  bool success = null;
  
/* The endpoint url of the forward log entry */
  @Property(name: 'url')
  String url = null;
  
  ForwardLog();

  @override
  String toString()  {
    return 'ForwardLog[endDate=$endDate, errorMsg=$errorMsg, eventId=$eventId, headers=$headers, httpStatusCode=$httpStatusCode, id=$id, method=$method, payload=$payload, response=$response, retryCount=$retryCount, retryable=$retryable, ruleId=$ruleId, startDate=$startDate, success=$success, url=$url, ]';
  }

}

