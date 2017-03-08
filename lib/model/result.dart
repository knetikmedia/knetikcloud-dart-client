part of swagger.api;


@Entity()
class Result {
  /* The JSAPI error code */
  @Property(name: 'code')
  int code = null;
  
/* The id used for debugging lookup */
  @Property(name: 'request_id')
  String requestId = null;
  
/* The error object */
  @Property(name: 'result')
  List<ErrorResource> result = [];
  
  Result();

  @override
  String toString()  {
    return 'Result[code=$code, requestId=$requestId, result=$result, ]';
  }

}

