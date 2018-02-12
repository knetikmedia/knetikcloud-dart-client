part of swagger.api;


@Entity()
class ChatUserThreadResource {
  /* The date the user thread was created */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The number of messages read in the thread */
  @Property(name: 'read_count')
  int readCount = null;
  
/* The details about the thread */
  @Property(name: 'thread')
  ChatThreadResource thread = null;
  
/* The id of the thread */
  @Property(name: 'thread_id')
  String threadId = null;
  
/* The date the user thread was updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The id of the user */
  @Property(name: 'user_id')
  int userId = null;
  
  ChatUserThreadResource();

  @override
  String toString()  {
    return 'ChatUserThreadResource[createdDate=$createdDate, readCount=$readCount, thread=$thread, threadId=$threadId, updatedDate=$updatedDate, userId=$userId, ]';
  }

}

