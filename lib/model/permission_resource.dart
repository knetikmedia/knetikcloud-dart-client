part of swagger.api;


@Entity()
class PermissionResource {
  /* The date the permission was added. Unix timestamp in seconds */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The description of the permission */
  @Property(name: 'description')
  String description = null;
  
/* Whether a permission is locked from being deleted */
  @Property(name: 'locked')
  bool locked = null;
  
/* The name of the permission used for display purposes */
  @Property(name: 'name')
  String name = null;
  
/* The name of the parent of the permission */
  @Property(name: 'parent')
  String parent = null;
  
/* The keyword that defines the permission */
  @Property(name: 'permission')
  String permission = null;
  
/* The date the permission was updated. Unix timestamp in seconds */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  PermissionResource();

  @override
  String toString()  {
    return 'PermissionResource[createdDate=$createdDate, description=$description, locked=$locked, name=$name, parent=$parent, permission=$permission, updatedDate=$updatedDate, ]';
  }

}

