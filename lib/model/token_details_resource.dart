part of swagger.api;


@Entity()
class TokenDetailsResource {
  
  @Property(name: 'roles')
  List<String> roles = [];
  

  @Property(name: 'user_id')
  int userId = null;
  
  TokenDetailsResource();

  @override
  String toString()  {
    return 'TokenDetailsResource[roles=$roles, userId=$userId, ]';
  }

}

