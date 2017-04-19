part of swagger.api;


@Entity()
class Artist {
  
  @Property(name: 'additional_properties')
  Map<String, Property> additionalProperties = {};
  

  @Property(name: 'born')
  int born = null;
  

  @Property(name: 'contribution_count')
  int contributionCount = null;
  

  @Property(name: 'created')
  int created = null;
  

  @Property(name: 'died')
  int died = null;
  

  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'long_description')
  String longDescription = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'priority')
  int priority = null;
  

  @Property(name: 'properties_string')
  String propertiesString = null;
  

  @Property(name: 'short_description')
  String shortDescription = null;
  

  @Property(name: 'template')
  String template = null;
  

  @Property(name: 'updated')
  int updated = null;
  
  Artist();

  @override
  String toString()  {
    return 'Artist[additionalProperties=$additionalProperties, born=$born, contributionCount=$contributionCount, created=$created, died=$died, id=$id, longDescription=$longDescription, name=$name, priority=$priority, propertiesString=$propertiesString, shortDescription=$shortDescription, template=$template, updated=$updated, ]';
  }

}

