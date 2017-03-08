part of swagger.api;


@Entity()
class Role {
  
  @Property(name: 'client_count')
  int clientCount = null;
  

  @Property(name: 'created_date')
  int createdDate = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'locked')
  bool locked = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'role')
  String role = null;
  

  @Property(name: 'role_permission')
  List<Permission> rolePermission = [];
  

  @Property(name: 'user_count')
  int userCount = null;
  
  Role();

  @override
  String toString()  {
    return 'Role[clientCount=$clientCount, createdDate=$createdDate, id=$id, locked=$locked, name=$name, role=$role, rolePermission=$rolePermission, userCount=$userCount, ]';
  }

}

