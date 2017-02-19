part of swagger.api;


@Entity()
class FulfillmentType {
  /* Whether the type is core and cannot be altered/deleted, read-only */
  @Property(name: 'core')
  bool core = null;
  
/* A description of the type */
  @Property(name: 'description')
  String description = null;
  
/* The unique id of the type, read-only */
  @Property(name: 'id')
  int id = null;
  
/* The name of the type */
  @Property(name: 'name')
  String name = null;
  
  FulfillmentType();

  @override
  String toString()  {
    return 'FulfillmentType[core=$core, description=$description, id=$id, name=$name, ]';
  }

}

