part of swagger.api;


@Entity()
class EventContextResource {
  
  @Property(name: 'definition')
  String definition = null;
  

  @Property(name: 'event_name')
  String eventName = null;
  

  @Property(name: 'parameters')
  Map<String, ExpressionResource> parameters = {};
  

  @Property(name: 'type')
  String type = null;
  
  EventContextResource();

  @override
  String toString()  {
    return 'EventContextResource[definition=$definition, eventName=$eventName, parameters=$parameters, type=$type, ]';
  }

}

