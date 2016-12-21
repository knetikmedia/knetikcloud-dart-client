part of swagger.api;


@Entity()
class BareActivityResource {
  /* The date/time this resource was created in seconds since unix epoch */
  @Property(name: 'created_date')
  int createdDate = null;
  
/* The unique ID for that resource */
  @Property(name: 'id')
  int id = null;
  
/* Details about how to launch the activity */
  @Property(name: 'launch')
  String launch = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'long_description')
  String longDescription = null;
  
/* The user friendly name of that resource */
  @Property(name: 'name')
  String name = null;
  
/* The user friendly name of that resource. Defaults to blank string */
  @Property(name: 'short_description')
  String shortDescription = null;
  
/* Whether this activity is a template for other activities. Default: false */
  @Property(name: 'template')
  bool template = null;
  
/* The type of the activity */
  @Property(name: 'type')
  String type = null;
  
/* The unique key (for static reference in code) of the activity */
  @Property(name: 'unique_key')
  String uniqueKey = null;
  
/* The date/time this resource was last updated in seconds since unix epoch */
  @Property(name: 'updated_date')
  int updatedDate = null;
  
  BareActivityResource();

  @override
  String toString()  {
    return 'BareActivityResource[createdDate=$createdDate, id=$id, launch=$launch, longDescription=$longDescription, name=$name, shortDescription=$shortDescription, template=$template, type=$type, uniqueKey=$uniqueKey, updatedDate=$updatedDate, ]';
  }

}

