part of swagger.api;


@Entity()
class ForwardLog {
  /* The end date of the forward log entry */
  @Property(name: 'end_date')
  int endDate = null;
  

  @Property(name: 'error_msg')
  String errorMsg = null;
  
/* The http status code the forward log entry */
  @Property(name: 'http_status_code')
  int httpStatusCode = null;
  
/* The id of the forward log entry */
  @Property(name: 'id')
  String id = null;
  
/* The payload of the forward log entry */
  @Property(name: 'payload')
  Object payload = null;
  
/* The response string of the forward log entry */
  @Property(name: 'response')
  String response = null;
  
/* The retry count of the forward log entry */
  @Property(name: 'retry_count')
  int retryCount = null;
  
/* The start date of the forward log entry */
  @Property(name: 'start_date')
  int startDate = null;
  
/* The endpoint url of the forward log entry */
  @Property(name: 'url')
  String url = null;
  
  ForwardLog();

  @override
  String toString()  {
    return 'ForwardLog[endDate=$endDate, errorMsg=$errorMsg, httpStatusCode=$httpStatusCode, id=$id, payload=$payload, response=$response, retryCount=$retryCount, startDate=$startDate, url=$url, ]';
  }

}

