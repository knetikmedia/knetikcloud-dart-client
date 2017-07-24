part of swagger.api;


@Entity()
class TokenDetailsResource {
  
  @Property(name: 'client_id')
  String clientId = null;
  

  @Property(name: 'roles')
  List<String> roles = [];
  

  @Property(name: 'user_id')
  int userId = null;
  
  TokenDetailsResource();

  @override
  String toString()  {
    return 'TokenDetailsResource[clientId=$clientId, roles=$roles, userId=$userId, ]';
  }

}

