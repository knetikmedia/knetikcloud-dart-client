part of swagger.api;


@Entity()
class GroupMemberResource {
  /* The url of the user's avatar image */
  @Property(name: 'avatar_url')
  String avatarUrl = null;
  
/* The public username of the user */
  @Property(name: 'display_name')
  String displayName = null;
  
/* The id of the user */
  @Property(name: 'id')
  int id = null;
  
/* The member's access level. Default: member */
  @Property(name: 'status')
  String status = null;
  //enum statusEnum {  moderator,  member,  };
/* The username of the user */
  @Property(name: 'username')
  String username = null;
  
  GroupMemberResource();

  @override
  String toString()  {
    return 'GroupMemberResource[avatarUrl=$avatarUrl, displayName=$displayName, id=$id, status=$status, username=$username, ]';
  }

}

