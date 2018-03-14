part of swagger.api;


@Entity()
class BasicTemplatedResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* An article template this article is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
  BasicTemplatedResource();

  @override
  String toString()  {
    return 'BasicTemplatedResource[additionalProperties=$additionalProperties, template=$template, ]';
  }

}

