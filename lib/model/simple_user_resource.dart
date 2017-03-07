part of swagger.api;


@Entity()
class SimpleUserResource {
  /* The url of the user's avatar image */
  @Property(name: 'avatar_url')
  String avatarUrl = null;
  
/* The public username of the user */
  @Property(name: 'display_name')
  String displayName = null;
  
/* The id of the user */
  @Property(name: 'id')
  int id = null;
  
/* The username of the user */
  @Property(name: 'username')
  String username = null;
  
  SimpleUserResource();

  @override
  String toString()  {
    return 'SimpleUserResource[avatarUrl=$avatarUrl, displayName=$displayName, id=$id, username=$username, ]';
  }

}

