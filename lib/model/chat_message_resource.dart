part of swagger.api;


@Entity()
class ChatMessageResource {
  /* The content of the message */
  @Property(name: 'content')
  Object content = null;
  
/* The date the chat message was created */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* Whether the message has been edited */
  @Property(name: 'edited')
  bool edited = null;
  
/* The id for this message */
  @Property(name: 'id')
  String id = null;
  
/* The type of the message set by the client */
  @Property(name: 'message_type')
  String messageType = null;
  
/* The id of the recipient: user id or topic id */
  @Property(name: 'recipient_id')
  String recipientId = null;
  
/* The recipient type of the message */
  @Property(name: 'recipient_type')
  String recipientType = null;
  //enum recipientTypeEnum {  user,  topic,  };
/* The id of the sender */
  @Property(name: 'sender_id')
  int senderId = null;
  
/* The id of the thread */
  @Property(name: 'thread_id')
  String threadId = null;
  
/* The date the chat message was updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ChatMessageResource();

  @override
  String toString()  {
    return 'ChatMessageResource[content=$content, createdDate=$createdDate, edited=$edited, id=$id, messageType=$messageType, recipientId=$recipientId, recipientType=$recipientType, senderId=$senderId, threadId=$threadId, updatedDate=$updatedDate, ]';
  }

}

