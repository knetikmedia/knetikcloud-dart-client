part of swagger.api;


@Entity()
class ErrorResource {
  /* Extra details about the error, if needed */
  @Property(name: 'details')
  Object details = null;
  
/* The JSON key the message pertains to */
  @Property(name: 'field')
  Object field = null;
  
/* The message explaining the error */
  @Property(name: 'message')
  String message = null;
  
  ErrorResource();

  @override
  String toString()  {
    return 'ErrorResource[details=$details, field=$field, message=$message, ]';
  }

}

