part of swagger.api;


@Entity()
class PropertyDefinitionResource {
  /* The name of the property */
  @Property(name: 'name')
  String name = null;
  
/* Whether the property is required */
  @Property(name: 'required')
  bool required = null;
  
/* The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. */
  @Property(name: 'type')
  String type = null;
  
  PropertyDefinitionResource();

  @override
  String toString()  {
    return 'PropertyDefinitionResource[name=$name, required=$required, type=$type, ]';
  }

}

