part of swagger.api;


@Entity()
class OAuth2Resource {
  /* The access token issued by the authorization server */
  @Property(name: 'access_token')
  String accessToken = null;
  
/* The lifetime in seconds of the access token */
  @Property(name: 'expires_in')
  String expiresIn = null;
  
/* The scope of the access token. Currently these values can be ignored, as security defaults to roles and permissions */
  @Property(name: 'scope')
  String scope = null;
  
/* The type of the token issued */
  @Property(name: 'token_type')
  String tokenType = null;
  
  OAuth2Resource();

  @override
  String toString()  {
    return 'OAuth2Resource[accessToken=$accessToken, expiresIn=$expiresIn, scope=$scope, tokenType=$tokenType, ]';
  }

}

