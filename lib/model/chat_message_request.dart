part of swagger.api;


@Entity()
class ChatMessageRequest {
  /* The content of the message */
  @Property(name: 'content')
  Object content = null;
  
/* The type of the message set by the client */
  @Property(name: 'message_type')
  String messageType = null;
  
  ChatMessageRequest();

  @override
  String toString()  {
    return 'ChatMessageRequest[content=$content, messageType=$messageType, ]';
  }

}

