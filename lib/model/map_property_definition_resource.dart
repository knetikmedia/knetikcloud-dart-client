part of swagger.api;


@Entity()
class MapPropertyDefinitionResource {
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
  
/* Whether to allow additional properties beyond those specified or not */
  @Property(name: 'allow_additional')
  bool allowAdditional = null;
  
/* If provided, a list of property definitions for each map entry */
  @Property(name: 'properties')
  List<PropertyDefinitionResource> properties = [];
  
  MapPropertyDefinitionResource();

  @override
  String toString()  {
    return 'MapPropertyDefinitionResource[fieldList=$fieldList, name=$name, required=$required, type=$type, allowAdditional=$allowAdditional, properties=$properties, ]';
  }

}

