part of swagger.api;


@Entity()
class Topic {
  
  @Property(name: 'created_date')
  int createdDate = null;
  

  @Property(name: 'display_name')
  String displayName = null;
  

  @Property(name: 'id')
  String id = null;
  

  @Property(name: 'locked')
  bool locked = null;
  

  @Property(name: 'tags')
  List<String> tags = [];
  

  @Property(name: 'topic_map')
  Object topicMap = null;
  

  @Property(name: 'updated_date')
  int updatedDate = null;
  

  @Property(name: 'user_count')
  int userCount = null;
  
  Topic();

  @override
  String toString()  {
    return 'Topic[createdDate=$createdDate, displayName=$displayName, id=$id, locked=$locked, tags=$tags, topicMap=$topicMap, updatedDate=$updatedDate, userCount=$userCount, ]';
  }

}

