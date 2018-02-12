part of swagger.api;


@Entity()
class ChatBlacklistResource {
  /* The user that is blacklisted */
  @Property(name: 'blacklisted_user')
  SimpleUserResource blacklistedUser = null;
  
/* The date the user was blacklisted */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique ID for this chat message blacklist */
  @Property(name: 'id')
  String id = null;
  
/* The user that has blacklisted someone */
  @Property(name: 'user_id')
  int userId = null;
  
  ChatBlacklistResource();

  @override
  String toString()  {
    return 'ChatBlacklistResource[blacklistedUser=$blacklistedUser, createdDate=$createdDate, id=$id, userId=$userId, ]';
  }

}

