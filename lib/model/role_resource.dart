part of swagger.api;


@Entity()
class RoleResource {
  /* The number of clients this role is assigned to */
  @Property(name: 'client_count')
  int clientCount = null;
  
/* The date the role was added. Unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* Whether a role is locked from being deleted */
  @Property(name: 'locked')
  bool locked = null;
  
/* The name of the role used for display purposes */
  @Property(name: 'name')
  String name = null;
  
/* The keyword that defines the role */
  @Property(name: 'role')
  String role = null;
  
/* The list of permissions this role has */
  @Property(name: 'role_permission')
  List<PermissionResource> rolePermission = [];
  
/* The number of users this role is assigned to */
  @Property(name: 'user_count')
  int userCount = null;
  
  RoleResource();

  @override
  String toString()  {
    return 'RoleResource[clientCount=$clientCount, createdDate=$createdDate, locked=$locked, name=$name, role=$role, rolePermission=$rolePermission, userCount=$userCount, ]';
  }

}

