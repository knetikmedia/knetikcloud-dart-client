part of swagger.api;


@Entity()
class MessageResource {
  /* The content of the message in various formats */
  @Property(name: 'content')
  MessageContentResource content = null;
  
/* The id of the recipient, dependent on the recipient_type. The user's id or the topic's id. Required if sending directly to messaging service */
  @Property(name: 'recipient')
  String recipient = null;
  
/* The type of recipient for the message. Either a user, or all users in a topic. Required if sending directly to messaging service */
  @Property(name: 'recipient_type')
  String recipientType = null;
  //enum recipientTypeEnum {  user,  topic,  };
/* The subject of the message. Required for email messages */
  @Property(name: 'subject')
  String subject = null;
  
/* The type of message for websocket type hinting. will be added to the payload with the key _type */
  @Property(name: 'type')
  String type = null;
  
  MessageResource();

  @override
  String toString()  {
    return 'MessageResource[content=$content, recipient=$recipient, recipientType=$recipientType, subject=$subject, type=$type, ]';
  }

}

