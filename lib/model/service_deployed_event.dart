part of swagger.api;


@Entity()
class ServiceDeployedEvent {
  
  @Property(name: 'client')
  String client = null;
  

  @Property(name: 'customer')
  String customer = null;
  

  @Property(name: 'do_not_broadcast')
  bool doNotBroadcast = null;
  

  @Property(name: 'section')
  String section = null;
  

  @Property(name: 'source')
  Object source = null;
  

  @Property(name: 'specifics')
  String specifics = null;
  

  @Property(name: 'synchronous')
  bool synchronous = null;
  

  @Property(name: 'timestamp')
  int timestamp = null;
  
/* The type of the event. Used for polymorphic type recognition and thus must match an expected type */
  @Property(name: 'type')
  String type = null;
  
/* The events fired by this service */
  @Property(name: 'events')
  List<BreTriggerResource> events = [];
  
/* The resources managed by this service */
  @Property(name: 'resources')
  List<ResourceTypeDescription> resources = [];
  
/* The unique name for the service. This serves as the unique identifier. Cannot be changed after creation */
  @Property(name: 'service_name')
  String serviceName = null;
  
/* The url of the swagger doc */
  @Property(name: 'swagger_url')
  String swaggerUrl = null;
  
  ServiceDeployedEvent();

  @override
  String toString()  {
    return 'ServiceDeployedEvent[client=$client, customer=$customer, doNotBroadcast=$doNotBroadcast, section=$section, source=$source, specifics=$specifics, synchronous=$synchronous, timestamp=$timestamp, type=$type, events=$events, resources=$resources, serviceName=$serviceName, swaggerUrl=$swaggerUrl, ]';
  }

}

