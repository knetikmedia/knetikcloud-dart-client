part of swagger.api;


@Entity()
class CommentSearch {
  
  @Property(name: 'content')
  String content = null;
  

  @Property(name: 'context')
  String context = null;
  

  @Property(name: 'context_id')
  int contextId = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'owner_id')
  int ownerId = null;
  

  @Property(name: 'owner_username')
  String ownerUsername = null;
  
  CommentSearch();

  @override
  String toString()  {
    return 'CommentSearch[content=$content, context=$context, contextId=$contextId, id=$id, ownerId=$ownerId, ownerUsername=$ownerUsername, ]';
  }

}

