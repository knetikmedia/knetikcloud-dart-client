part of swagger.api;


@Entity()
class TopicSubscriberResource {
  /* Whether the user has disabled messages from the topic */
  @Property(name: 'disabled')
  bool disabled = null;
  
/* The ID for this topic */
  @Property(name: 'topic_id')
  String topicId = null;
  
/* The user ID subscribed to the topic */
  @Property(name: 'user_id')
  int userId = null;
  
/* The username subscribed to the topic */
  @Property(name: 'username')
  String username = null;
  
  TopicSubscriberResource();

  @override
  String toString()  {
    return 'TopicSubscriberResource[disabled=$disabled, topicId=$topicId, userId=$userId, username=$username, ]';
  }

}

