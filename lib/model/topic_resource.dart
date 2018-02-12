part of swagger.api;


@Entity()
class TopicResource {
  /* The created date of the topic */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The display name of the topic */
  @Property(name: 'display_name')
  String displayName = null;
  
/* The unique ID for this topic */
  @Property(name: 'id')
  String id = null;
  
/* Whether this topic is locked or not. */
  @Property(name: 'locked')
  bool locked = null;
  
/* Random tags to facilitate search */
  @Property(name: 'tags')
  List<String> tags = [];
  
/* The last time the topic was updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The subscribed user count of the topic */
  @Property(name: 'user_count')
  int userCount = null;
  
  TopicResource();

  @override
  String toString()  {
    return 'TopicResource[createdDate=$createdDate, displayName=$displayName, id=$id, locked=$locked, tags=$tags, updatedDate=$updatedDate, userCount=$userCount, ]';
  }

}

