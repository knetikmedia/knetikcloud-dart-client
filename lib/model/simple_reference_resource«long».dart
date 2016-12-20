part of swagger.api;


@Entity()
class SimpleReferenceResource«long» {
  /* The id of the referenced object */
  @Property(name: 'id')
  int id = null;
  
/* The name of the referenced object */
  @Property(name: 'name')
  String name = null;
  
  SimpleReferenceResource«long»();

  @override
  String toString()  {
    return 'SimpleReferenceResource«long»[id=$id, name=$name, ]';
  }

}

