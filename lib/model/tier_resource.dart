part of swagger.api;


@Entity()
class TierResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The name of the tier */
  @Property(name: 'name')
  String name = null;
  
/* The required progress for the tier */
  @Property(name: 'required_progress')
  int requiredProgress = null;
  
  TierResource();

  @override
  String toString()  {
    return 'TierResource[additionalProperties=$additionalProperties, name=$name, requiredProgress=$requiredProgress, ]';
  }

}

