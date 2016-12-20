part of swagger.api;


@Entity()
class BatchRequest {
  /* The request body as would be passed to the URI */
  @Property(name: 'body')
  Object body = null;
  
/* Content type used, Ex:(application/json) */
  @Property(name: 'content_type')
  String contentType = null;
  
/* The HTTP method used, Ex: (GET) */
  @Property(name: 'method')
  String method = null;
  
/* Time in seconds before process will timeout.  Default is 60.  Range is 1-300 */
  @Property(name: 'timeout')
  int timeout = null;
  
/* The oauth token only */
  @Property(name: 'token')
  String token = null;
  
/* Full URI of REST call */
  @Property(name: 'uri')
  String uri = null;
  
  BatchRequest();

  @override
  String toString()  {
    return 'BatchRequest[body=$body, contentType=$contentType, method=$method, timeout=$timeout, token=$token, uri=$uri, ]';
  }

}

