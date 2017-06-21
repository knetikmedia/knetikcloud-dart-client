part of swagger.api;


@Entity()
class EventContextResource {
  
  @Property(name: 'event_name')
  String eventName = null;
  

  @Property(name: 'parameters')
  Map<String, ExpressionResource> parameters = {};
  

  @Property(name: 'type')
  String type = null;
  
  EventContextResource();

  @override
  String toString()  {
    return 'EventContextResource[eventName=$eventName, parameters=$parameters, type=$type, ]';
  }

}

