part of swagger.api;


@Entity()
class CategoryResource {
  /* Whether the category is currently active. If not, it and its questions will be filtered out. */
  @Property(name: 'active')
  bool active = null;
  
/* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The unique ID for this category */
  @Property(name: 'id')
  String id = null;
  
/* The name of this category. Cannot be blank */
  @Property(name: 'name')
  String name = null;
  
/* A category template this category is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
  CategoryResource();

  @override
  String toString()  {
    return 'CategoryResource[active=$active, additionalProperties=$additionalProperties, id=$id, name=$name, template=$template, ]';
  }

}

