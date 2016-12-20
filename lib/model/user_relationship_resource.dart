part of swagger.api;


@Entity()
class UserRelationshipResource {
  /* The child in the relationship */
  @Property(name: 'child')
  SimpleUserResource child = null;
  
/* Context about the relationship or its type */
  @Property(name: 'context')
  String context = null;
  
/* A generated unique id. Read-Only */
  @Property(name: 'id')
  int id = null;
  
/* The parent in the relationship */
  @Property(name: 'parent')
  SimpleUserResource parent = null;
  
  UserRelationshipResource();

  @override
  String toString()  {
    return 'UserRelationshipResource[child=$child, context=$context, id=$id, parent=$parent, ]';
  }

}

