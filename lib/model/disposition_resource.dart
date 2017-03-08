part of swagger.api;


@Entity()
class DispositionResource {
  /* The context of that resource. Required when passed to /dispositions rather than context specific endpoint */
  @Property(name: 'context')
  String context = null;
  
/* The context_id of that resource. Required when passed to /dispositions rather than context specific endpoint */
  @Property(name: 'context_id')
  String contextId = null;
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The name of the disposition, 1-20 characters. (ex: like/dislike/favorite, etc) */
  @Property(name: 'name')
  String name = null;
  
/* The user */
  @Property(name: 'user')
  SimpleUserResource user = null;
  
  DispositionResource();

  @override
  String toString()  {
    return 'DispositionResource[context=$context, contextId=$contextId, createdDate=$createdDate, id=$id, name=$name, user=$user, ]';
  }

}

