part of swagger.api;


@Entity()
class GoogleToken {
  /* A valid authorization code from google. See google documention for how to obtain one. */
  @Property(name: 'authorization_code')
  String authorizationCode = null;
  
  GoogleToken();

  @override
  String toString()  {
    return 'GoogleToken[authorizationCode=$authorizationCode, ]';
  }

}

