part of swagger.api;


@Entity()
class TopicSubscriber {
  
  @Property(name: 'disabled')
  bool disabled = null;
  

  @Property(name: 'email')
  String email = null;
  

  @Property(name: 'join_date')
  int joinDate = null;
  

  @Property(name: 'mobile_number')
  String mobileNumber = null;
  

  @Property(name: 'topic_id')
  String topicId = null;
  

  @Property(name: 'topic_subscriber_map')
  Object topicSubscriberMap = null;
  

  @Property(name: 'user_id')
  int userId = null;
  

  @Property(name: 'username')
  String username = null;
  
  TopicSubscriber();

  @override
  String toString()  {
    return 'TopicSubscriber[disabled=$disabled, email=$email, joinDate=$joinDate, mobileNumber=$mobileNumber, topicId=$topicId, topicSubscriberMap=$topicSubscriberMap, userId=$userId, username=$username, ]';
  }

}

