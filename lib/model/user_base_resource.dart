part of swagger.api;


@Entity()
class UserBaseResource {
  /* The url of the user's avatar image */
  @Property(name: 'avatar_url')
  String avatarUrl = null;
  
/* The chosen display name of the user, defaults to username if not present */
  @Property(name: 'display_name')
  String displayName = null;
  
/* The user's email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822) */
  @Property(name: 'email')
  String email = null;
  
/* The user's full name (private) */
  @Property(name: 'fullname')
  String fullname = null;
  
/* The id of the user */
  @Property(name: 'id')
  int id = null;
  
/* The date the user's info was last updated as a unix timestamp */
  @Property(name: 'last_updated')
  int lastUpdated = null;
  
/* The user's date of registration as a unix timestamp */
  @Property(name: 'member_since')
  int memberSince = null;
  
/* The login username for the user (private). May be set to match email if system does not require usernames separately. */
  @Property(name: 'username')
  String username = null;
  
  UserBaseResource();

  @override
  String toString()  {
    return 'UserBaseResource[avatarUrl=$avatarUrl, displayName=$displayName, email=$email, fullname=$fullname, id=$id, lastUpdated=$lastUpdated, memberSince=$memberSince, username=$username, ]';
  }

}

