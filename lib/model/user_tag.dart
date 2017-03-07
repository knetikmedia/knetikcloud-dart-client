part of swagger.api;


@Entity()
class UserTag {
  
  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'tag')
  String tag = null;
  

  @Property(name: 'user')
  User user = null;
  
  UserTag();

  @override
  String toString()  {
    return 'UserTag[id=$id, tag=$tag, user=$user, ]';
  }

}

