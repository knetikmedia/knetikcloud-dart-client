part of swagger.api;


@Entity()
class BatchReturn {
  /* The result body */
  @Property(name: 'body')
  Object body = null;
  
/* The HTTP response code */
  @Property(name: 'code')
  int code = null;
  
/* Full URI of REST call */
  @Property(name: 'uri')
  String uri = null;
  
  BatchReturn();

  @override
  String toString()  {
    return 'BatchReturn[body=$body, code=$code, uri=$uri, ]';
  }

}

