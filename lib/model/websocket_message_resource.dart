part of swagger.api;


@Entity()
class WebsocketMessageResource {
  /* The body of the outgoing message. */
  @Property(name: 'content')
  Object content = null;
  
/* A message type to inform websocket recipient how to parse content */
  @Property(name: 'message_type')
  String messageType = null;
  
/* A list of user ids to send the message to. */
  @Property(name: 'recipients')
  List<int> recipients = [];
  
  WebsocketMessageResource();

  @override
  String toString()  {
    return 'WebsocketMessageResource[content=$content, messageType=$messageType, recipients=$recipients, ]';
  }

}

