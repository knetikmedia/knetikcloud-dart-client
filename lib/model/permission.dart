part of swagger.api;


@Entity()
class Permission {
  
  @Property(name: 'created_date')
  int createdDate = null;
  

  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'locked')
  bool locked = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'parent')
  String parent = null;
  

  @Property(name: 'permission')
  String permission = null;
  

  @Property(name: 'updated_date')
  int updatedDate = null;
  
  Permission();

  @override
  String toString()  {
    return 'Permission[createdDate=$createdDate, description=$description, id=$id, locked=$locked, name=$name, parent=$parent, permission=$permission, updatedDate=$updatedDate, ]';
  }

}

