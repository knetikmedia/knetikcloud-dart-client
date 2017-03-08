part of swagger.api;


@Entity()
class NestedCategory {
  /* Whether the category is active */
  @Property(name: 'active')
  bool active = null;
  
/* The id of the category */
  @Property(name: 'id')
  String id = null;
  
/* The name of the category */
  @Property(name: 'name')
  String name = null;
  
  NestedCategory();

  @override
  String toString()  {
    return 'NestedCategory[active=$active, id=$id, name=$name, ]';
  }

}

