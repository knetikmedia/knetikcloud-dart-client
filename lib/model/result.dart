part of swagger.api;


@Entity()
class Result {
  
  @Property(name: 'code')
  int code = null;
  

  @Property(name: 'request_id')
  String requestId = null;
  

  @Property(name: 'result')
  Object result = null;
  
  Result();

  @override
  String toString()  {
    return 'Result[code=$code, requestId=$requestId, result=$result, ]';
  }

}

