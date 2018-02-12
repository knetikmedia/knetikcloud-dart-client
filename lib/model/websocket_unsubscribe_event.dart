part of swagger.api;


@Entity()
class WebsocketUnsubscribeEvent {
  
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
  

  @Property(name: 'topic')
  Topic topic = null;
  

  @Property(name: 'topic_subscriber')
  TopicSubscriber topicSubscriber = null;
  
  WebsocketUnsubscribeEvent();

  @override
  String toString()  {
    return 'WebsocketUnsubscribeEvent[client=$client, customer=$customer, doNotBroadcast=$doNotBroadcast, section=$section, source=$source, specifics=$specifics, synchronous=$synchronous, timestamp=$timestamp, type=$type, topic=$topic, topicSubscriber=$topicSubscriber, ]';
  }

}

