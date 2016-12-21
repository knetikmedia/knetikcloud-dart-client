part of swagger.api;


@Entity()
class UserRelationship {
  
  @Property(name: 'child')
  User child = null;
  

  @Property(name: 'context')
  String context = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'parent')
  User parent = null;
  
  UserRelationship();

  @override
  String toString()  {
    return 'UserRelationship[child=$child, context=$context, id=$id, parent=$parent, ]';
  }

}

