part of swagger.api;


@Entity()
class OauthAccessTokenResource {
  /* The key of the client assosciated with the token */
  @Property(name: 'client_id')
  String clientId = null;
  
/* The token.  Not shown in list view */
  @Property(name: 'token')
  String token = null;
  
/* The username of the user associated with the token */
  @Property(name: 'username')
  String username = null;
  
  OauthAccessTokenResource();

  @override
  String toString()  {
    return 'OauthAccessTokenResource[clientId=$clientId, token=$token, username=$username, ]';
  }

}

