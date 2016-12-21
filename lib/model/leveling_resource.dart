part of swagger.api;


@Entity()
class LevelingResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* The date the leveling schema was created */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The description of the leveling schema */
  @Property(name: 'description')
  String description = null;
  
/* The name of the leveling schema.  IMMUTABLE */
  @Property(name: 'name')
  String name = null;
  
/* A set of tiers that contain experience boundaries */
  @Property(name: 'tiers')
  List<TierResource> tiers = [];
  
/* The date the leveling schema was updated */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  LevelingResource();

  @override
  String toString()  {
    return 'LevelingResource[additionalProperties=$additionalProperties, createdDate=$createdDate, description=$description, name=$name, tiers=$tiers, updatedDate=$updatedDate, ]';
  }

}

