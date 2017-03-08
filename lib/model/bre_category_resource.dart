part of swagger.api;


@Entity()
class BreCategoryResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The name of the category. Serves as the unique id */
  @Property(name: 'name')
  String name = null;
  
/* A template this BRE category is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
  BreCategoryResource();

  @override
  String toString()  {
    return 'BreCategoryResource[additionalProperties=$additionalProperties, name=$name, template=$template, ]';
  }

}

