part of swagger.api;


@Entity()
class PropertyFieldListResource {
  /* A list of fields for the property definition. */
  @Property(name: 'property_definition_fields')
  List<PropertyFieldResource> propertyDefinitionFields = [];
  
/* A list of fields for the property. */
  @Property(name: 'property_fields')
  List<PropertyFieldResource> propertyFields = [];
  
/* The type for the property this describes. */
  @Property(name: 'property_type')
  String propertyType = null;
  
  PropertyFieldListResource();

  @override
  String toString()  {
    return 'PropertyFieldListResource[propertyDefinitionFields=$propertyDefinitionFields, propertyFields=$propertyFields, propertyType=$propertyType, ]';
  }

}

