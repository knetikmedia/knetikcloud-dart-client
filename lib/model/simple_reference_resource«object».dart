part of swagger.api;


@Entity()
class SimpleReferenceResource«object» {
  /* The id of the referenced object */
  @Property(name: 'id')
  Object id = null;
  
/* The name of the referenced object */
  @Property(name: 'name')
  String name = null;
  
  SimpleReferenceResource«object»();

  @override
  String toString()  {
    return 'SimpleReferenceResource«object»[id=$id, name=$name, ]';
  }

}

