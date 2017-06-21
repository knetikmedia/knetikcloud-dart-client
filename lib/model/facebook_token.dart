part of swagger.api;


@Entity()
class FacebookToken {
  /* A valid access token from facebook. See facebook documention for how to obtain one. */
  @Property(name: 'access_token')
  String accessToken = null;
  
  FacebookToken();

  @override
  String toString()  {
    return 'FacebookToken[accessToken=$accessToken, ]';
  }

}

