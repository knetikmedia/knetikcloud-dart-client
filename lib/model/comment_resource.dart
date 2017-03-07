part of swagger.api;


@Entity()
class CommentResource {
  /* The comment content of that resource */
  @Property(name: 'content')
  String content = null;
  
/* The type of object this comment applies to (ex: video, article, etc). Required when passed to /comments */
  @Property(name: 'context')
  String context = null;
  
/* The id of the object this comment applies to.  Required when passed to /comments */
  @Property(name: 'context_id')
  int contextId = null;
  
/* The date/time this resource was created in seconds since epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The summary of that resource */
  @Property(name: 'summary')
  String summary = null;
  
/* The date/time this resource was last updated in seconds since epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
/* The user who created the comment */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  CommentResource();

  @override
  String toString()  {
    return 'CommentResource[content=$content, context=$context, contextId=$contextId, createdDate=$createdDate, id=$id, summary=$summary, updatedDate=$updatedDate, user=$user, ]';
  }

}

