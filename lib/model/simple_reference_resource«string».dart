part of swagger.api;


@Entity()
class SimpleReferenceResource«string» {
  /* The id of the referenced object */
  @Property(name: 'id')
  String id = null;
  
/* The name of the referenced object */
  @Property(name: 'name')
  String name = null;
  
  SimpleReferenceResource«string»();

  @override
  String toString()  {
    return 'SimpleReferenceResource«string»[id=$id, name=$name, ]';
  }

}

