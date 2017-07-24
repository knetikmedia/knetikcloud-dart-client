part of swagger.api;


@Entity()
class ClientResource {
  /* The expiration time of an initial oauth token in seconds */
  @Property(name: 'access_token_validity_seconds')
  int accessTokenValiditySeconds = null;
  
/* The client_id field of the oauth token request */
  @Property(name: 'client_key')
  String clientKey = null;
  
/* The oauth grant type as in: password (username/password auth), client_credentials (server-to-server, private clients), refresh_token (to allow clients to refresh their initial token), facebook, google, etc) See documentation for a complete list. Use dedicated endpoint PUT /grant-types to edit this list */
  @Property(name: 'grant_types')
  List<String> grantTypes = [];
  
/* Generated unique ID for the client */
  @Property(name: 'id')
  int id = null;
  
/* Set to true if the client is public i.e the secret key can be secured */
  @Property(name: 'is_public')
  bool isPublic = null;
  
/* Used to flag system clients that are not meant to be tinkered with */
  @Property(name: 'locked')
  bool locked = null;
  
/* The friendly name of the client */
  @Property(name: 'name')
  String name = null;
  
/* A redirection URL to use when granting access to third-parties (seldomly used) */
  @Property(name: 'redirect_uris')
  List<String> redirectUris = [];
  
/* The expiration time of a refresh oauth token in seconds */
  @Property(name: 'refresh_token_validity_seconds')
  int refreshTokenValiditySeconds = null;
  
/* The client-secret field of the oauth request when creating a private client */
  @Property(name: 'secret')
  String secret = null;
  
  ClientResource();

  @override
  String toString()  {
    return 'ClientResource[accessTokenValiditySeconds=$accessTokenValiditySeconds, clientKey=$clientKey, grantTypes=$grantTypes, id=$id, isPublic=$isPublic, locked=$locked, name=$name, redirectUris=$redirectUris, refreshTokenValiditySeconds=$refreshTokenValiditySeconds, secret=$secret, ]';
  }

}

