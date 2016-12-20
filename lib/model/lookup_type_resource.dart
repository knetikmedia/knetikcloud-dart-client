part of swagger.api;


@Entity()
class LookupTypeResource {
  /* The description of the expression type */
  @Property(name: 'description')
  String description = null;
  
/* The variable type the key expression must be, or null if it's dependent (see description for explanation in this case) */
  @Property(name: 'key_type')
  String keyType = null;
  
/* The name of the expression type */
  @Property(name: 'name')
  String name = null;
  
/* The variable type of the value this expression returns, or null if it's dependent (see description for explanation in this case) */
  @Property(name: 'value_type')
  String valueType = null;
  
  LookupTypeResource();

  @override
  String toString()  {
    return 'LookupTypeResource[description=$description, keyType=$keyType, name=$name, valueType=$valueType, ]';
  }

}

