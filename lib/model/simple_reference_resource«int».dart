part of swagger.api;


@Entity()
class SimpleReferenceResource«int» {
  /* The id of the referenced object */
  @Property(name: 'id')
  int id = null;
  
/* The name of the referenced object */
  @Property(name: 'name')
  String name = null;
  
  SimpleReferenceResource«int»();

  @override
  String toString()  {
    return 'SimpleReferenceResource«int»[id=$id, name=$name, ]';
  }

}

