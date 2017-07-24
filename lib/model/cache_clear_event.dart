part of swagger.api;


@Entity()
class CacheClearEvent {
  
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
  

  @Property(name: 'customer_setup')
  bool customerSetup = null;
  

  @Property(name: 'customer_teardown')
  bool customerTeardown = null;
  
  CacheClearEvent();

  @override
  String toString()  {
    return 'CacheClearEvent[client=$client, customer=$customer, doNotBroadcast=$doNotBroadcast, section=$section, source=$source, specifics=$specifics, synchronous=$synchronous, timestamp=$timestamp, type=$type, customerSetup=$customerSetup, customerTeardown=$customerTeardown, ]';
  }

}
