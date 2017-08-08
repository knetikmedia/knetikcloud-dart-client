part of swagger.api;


@Entity()
class Order {
  
  @Property(name: 'ascending')
  bool ascending = null;
  

  @Property(name: 'descending')
  bool descending = null;
  

  @Property(name: 'direction')
  String direction = null;
  //enum directionEnum {  ASC,  DESC,  };

  @Property(name: 'ignore_case')
  bool ignoreCase = null;
  

  @Property(name: 'null_handling')
  String nullHandling = null;
  //enum nullHandlingEnum {  NATIVE,  NULLS_FIRST,  NULLS_LAST,  };

  @Property(name: 'property')
  String property = null;
  
  Order();

  @override
  String toString()  {
    return 'Order[ascending=$ascending, descending=$descending, direction=$direction, ignoreCase=$ignoreCase, nullHandling=$nullHandling, property=$property, ]';
  }

}

