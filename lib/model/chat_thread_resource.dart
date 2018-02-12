part of swagger.api;


@Entity()
class ChatThreadResource {
  /* The number of active users in the thread */
  @Property(name: 'active_users')
  int activeUsers = null;
  
/* The number of messages in the thread */
  @Property(name: 'count')
  int count = null;
  
/* The date the thread was created */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The id for this thread */
  @Property(name: 'id')
  String id = null;
  
/* The id of the recipient */
  @Property(name: 'recipient_id')
  String recipientId = null;
  
/* The recipient type of the thread */
  @Property(name: 'recipient_type')
  String recipientType = null;
  //enum recipientTypeEnum {  user,  topic,  };
/* The subject of the thread */
  @Property(name: 'subject')
  String subject = null;
  
/* The date the thread was updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ChatThreadResource();

  @override
  String toString()  {
    return 'ChatThreadResource[activeUsers=$activeUsers, count=$count, createdDate=$createdDate, id=$id, recipientId=$recipientId, recipientType=$recipientType, subject=$subject, updatedDate=$updatedDate, ]';
  }

}

