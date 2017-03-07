part of swagger.api;


@Entity()
class ClientResource {
  /* The time limit of the token in seconds */
  @Property(name: 'access_token_validity_seconds')
  int accessTokenValiditySeconds = null;
  
/* The client key, cannot be edited once created */
  @Property(name: 'client_key')
  String clientKey = null;
  
/* The grant types of the client */
  @Property(name: 'grant_types')
  List<String> grantTypes = [];
  
/* The id of the client */
  @Property(name: 'id')
  int id = null;
  
/* Whether the client is public or not */
  @Property(name: 'is_public')
  bool isPublic = null;
  
/* Whether a client is locked from being deleted */
  @Property(name: 'locked')
  bool locked = null;
  
/* The name of the client */
  @Property(name: 'name')
  String name = null;
  
/* The redirect uris of the client */
  @Property(name: 'redirect_uris')
  List<String> redirectUris = [];
  
/* The time limit of the refresh token in seconds */
  @Property(name: 'refresh_token_validity_seconds')
  int refreshTokenValiditySeconds = null;
  
/* The secret key of the client */
  @Property(name: 'secret')
  String secret = null;
  
  ClientResource();

  @override
  String toString()  {
    return 'ClientResource[accessTokenValiditySeconds=$accessTokenValiditySeconds, clientKey=$clientKey, grantTypes=$grantTypes, id=$id, isPublic=$isPublic, locked=$locked, name=$name, redirectUris=$redirectUris, refreshTokenValiditySeconds=$refreshTokenValiditySeconds, secret=$secret, ]';
  }

}

