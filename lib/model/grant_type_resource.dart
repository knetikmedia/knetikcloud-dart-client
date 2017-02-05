part of swagger.api;


@Entity()
class GrantTypeResource {
  /* The description of the grant type */
  @Property(name: 'description')
  String description = null;
  
/* The name of the grant type */
  @Property(name: 'name')
  String name = null;
  
  GrantTypeResource();

  @override
  String toString()  {
    return 'GrantTypeResource[description=$description, name=$name, ]';
  }

}

