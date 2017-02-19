part of swagger.api;


@Entity()
class ArtistResource {
  /* A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type */
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  
/* YYYY/MM/DD when this artist was born */
  @Property(name: 'born')
  String born = null;
  
/* The current number of contributions the artist has made */
  @Property(name: 'contribution_count')
  int contributionCount = null;
  
/* The list of media this artist has contributed to as well as role(s) during contribution.  Use media endpoint to add contributions */
  @Property(name: 'contributions')
  List<ContributionResource> contributions = [];
  
/* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* YYYY/MM/DD when this artist died */
  @Property(name: 'died')
  String died = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The sort order priority ofr the artist.  Default 100 */
  @Property(name: 'priority')
  int priority = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* An artist template this artist is validated against (private). May be null and no validation of additional_properties will be done */
  @Property(name: 'template')
  String template = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  ArtistResource();

  @override
  String toString()  {
    return 'ArtistResource[additionalProperties=$additionalProperties, born=$born, contributionCount=$contributionCount, contributions=$contributions, createdDate=$createdDate, died=$died, id=$id, longDescription=$longDescription, name=$name, priority=$priority, shortDescription=$shortDescription, template=$template, updatedDate=$updatedDate, ]';
  }

}

