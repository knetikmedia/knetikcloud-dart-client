part of swagger.api;


@Entity()
class BooleanPropertyDefinitionResource {
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
  
  BooleanPropertyDefinitionResource();

  @override
  String toString()  {
    return 'BooleanPropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, ]';
  }

}

