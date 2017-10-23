part of swagger.api;


@Entity()
class LongPropertyDefinitionResource {
  /* A list of the fields on both the property definition and property of this type */
  @Property(name: 'field_list')
  PropertyFieldListResource fieldList = null;
  
/* The name of the property */
  @Property(name: 'name')
  String name = null;
  
/* Whether the property is required */
  @Property(name: 'required')
  bool required = null;
  
/* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
/* If provided, the maximum value */
  @Property(name: 'max')
  int max = null;
  
/* If provided, the minimum value */
  @Property(name: 'min')
  int min = null;
  
  LongPropertyDefinitionResource();

  @override
  String toString()  {
    return 'LongPropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, max=$max, min=$min, ]';
  }

}

