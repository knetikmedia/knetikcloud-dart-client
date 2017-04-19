part of swagger.api;


@Entity()
class Config {
  /* The description of the config.  Max 140 characters */
  @Property(name: 'description')
  String description = null;
  
/* The name of the config */
  @Property(name: 'name')
  String name = null;
  
/* Whether the config is public for viewing. True means that it can be publicly viewed by all. Default: false */
  @Property(name: 'public_read')
  bool publicRead = null;
  
/* The value of the config */
  @Property(name: 'value')
  String value = null;
  
  Config();

  @override
  String toString()  {
    return 'Config[description=$description, name=$name, publicRead=$publicRead, value=$value, ]';
  }

}

